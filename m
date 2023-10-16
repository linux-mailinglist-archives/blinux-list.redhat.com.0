Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 413AF7CB493
	for <lists+blinux-list@lfdr.de>; Mon, 16 Oct 2023 22:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697487816;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OXTF52n7WULvYR8TnDD5c64PN+GeLq2pB4id27lfnq0=;
	b=TITjKDxR9xaynvntVvsGZUXWu9RyKHtidCu37kMkVEYoWQ2lixpQGXhHA/R/LW15dt7XlI
	lc7Xs+cDxsrA3siHI8KjKwp6bZhTU3e0LWQ8HCV6nDNrz53wbLnW72HBA3gmPbE3qmSnES
	mIZ6w0G3kSy5xL7xFFmNRYDJTmYPu2o=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-19-S7f1bG55N7-YRDO999RC9w-1; Mon, 16 Oct 2023 16:23:15 -0400
X-MC-Unique: S7f1bG55N7-YRDO999RC9w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C911B299E748;
	Mon, 16 Oct 2023 20:23:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B38C640C6F79;
	Mon, 16 Oct 2023 20:23:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 204D119465BA;
	Mon, 16 Oct 2023 20:23:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 16 Oct 2023 16:23:07 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: command line tool for this task?
In-Reply-To: <mailman.433.1697486114.843858.blinux-list@redhat.com>
References: <mailman.428.1697481936.843860.blinux-list@redhat.com>
 <mailman.397.1697482540.843859.blinux-list@redhat.com>
 <mailman.433.1697483726.843860.blinux-list@redhat.com>
 <mailman.433.1697486114.843858.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.488.1697487791.843861.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I use pine here and alpine for the office, do those count?



On Mon, 16 Oct 2023, Linux for blind general discussion wrote:

> Tim here.  Yep, assuming you use mail(1) to read your mail and have
> it configured to send mail for you, you should be able create a
> template and send mail by creating a shell-script like
>
> $ cat send_thanks.sh
> #!/bin/sh
> EMAIL="$1"
> SUBJECT="$2"
> NAME="$3"
> GIFT="$4"
> mail -s "$SUBJECT" "$EMAIL" <<EOF
> Dear, $NAME,
> Thank you for the $GIFT you gave us.
> Sincerely,
> Karen
> EOF
>
>
> With this, you can invoke it with
>
>  $ ./send_thanks.sh donor@example.net "We love the bucket of cash" "John & Mary Donorston" "big bucket of cash"
>
> and it will send an email to "donor@example.net" with a subject of
> "We love the bucket of cash", and the body of the email will read
>
>  Dear, John & Mary Donorston,
>  Thank you for the big bucket of cash you gave us.
>  Sincerely,
>  Karen
>
> Here's hoping it helps,
>
> -tim
>
>
>
>
> On 2023-10-16 15:15, Linux for blind general discussion wrote:
>> Is this program a part of the standard Linux shell therefore likely to be a
>> part of  Shellworld using Ubuntu?
>> Kare
>>
>>
>>
>> On Mon, 16 Oct 2023, Linux for blind general discussion wrote:
>>
>>> Have you considered using a here document in a shell script, with
>>> variables that can be supplied for those parts of the text that change?
>>>
>>> https://www.baeldung.com/linux/heredoc-herestring
>>>
>>> On 16/10/23 14:45, Linux for blind general discussion wrote:
>>>> Hi folks,
>>>> Let me begin by stating that my access to Linux is a shell service,
>>>> specifically shellworld.net
>>>>
>>>> what I am seeking is a tool likely to be included that lets me create a
>>>> file I will then use as a gift acknowledgment letter sent via email.
>>>> What I mean is this.
>>>> I have the name and email of a contributor.?? I create the body, but wish
>>>> to change slight details, their name, the amount their email etc.
>>>> Is there a tool in command line Linux that will provide this sort of
>>>> solution?
>>>> thanks,
>>>> Karen
>>>>
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

