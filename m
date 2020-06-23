Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 39B2C205725
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 18:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592929548;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=sMTt//ZoTtrWozKXZZk3q1s7kWyodEmS2FkoO6PJ0Ko=;
	b=U9ceKYXvgEd1xDJHHCpcwxrBn+UK4EoZQ9nSs+nv4N0GxOPxAitfmjjnYhvE3dYuETyVXY
	dcU2SNK/rtdOrw1yoXVYLIn0u60+WhICz3NCKrHHxiNORHv0O+jpRYXMKM0OxdXzEkNo1N
	iCu8yswUzcXPo0EF0rDOGQGqjzJlqpM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-ecDyCf_vNvivcoNcSnrO2A-1; Tue, 23 Jun 2020 12:25:45 -0400
X-MC-Unique: ecDyCf_vNvivcoNcSnrO2A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0089B804003;
	Tue, 23 Jun 2020 16:25:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC4A1891C4;
	Tue, 23 Jun 2020 16:25:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AB9A41809547;
	Tue, 23 Jun 2020 16:25:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05NGPYhD027074 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Jun 2020 12:25:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 86FEF2017F0C; Tue, 23 Jun 2020 16:25:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 831A62029F6F
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 16:25:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1EB93800294
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 16:25:32 +0000 (UTC)
Received: from bilbo.visn.co.uk (bilbo.visn.co.uk [193.254.210.60]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-68-iZQX-SzhM2aLCDEdj0QfEw-1; Tue, 23 Jun 2020 12:25:29 -0400
X-MC-Unique: iZQX-SzhM2aLCDEdj0QfEw-1
Received: from cpc121376-wals12-2-0-cust281.16-1.cable.virginm.net
	([77.100.81.26]:1058 helo=bobsh23aug09)
	by bilbo.visn.co.uk with esmtpa (Exim 4.93)
	(envelope-from <robh@apearl.net>) id 1jnlHT-005IR9-VE
	for blinux-list@redhat.com; Tue, 23 Jun 2020 16:56:16 +0100
Message-ID: <A1B3F0F310654A7ABDEE81A3043550EB@bobsh23aug09>
To: <blinux-list@redhat.com>
References: <C89E4DED-1132-45C0-BE16-E42E2E9B6ACD@gmail.com>
Subject: Re: off list questions
Date: Tue, 23 Jun 2020 16:56:21 +0100
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5579
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - bilbo.visn.co.uk
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - apearl.net
X-Get-Message-Sender-Via: bilbo.visn.co.uk: authenticated_id:
	robh+apearl.net/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: bilbo.visn.co.uk: robh@apearl.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just checked and the greatest handicap to your request is that sender 
addresses are kept hidden.  Otherwise, clicking reply, then searching 
headers of the quoted text usually shows up original sender address you can 
copy and paste.

----- Original Message ----- 
From: "Linux for blind general discussion" <blinux-list@redhat.com>
To: "Linux for blind general discussion" <blinux-list@redhat.com>
Sent: Tuesday, June 23, 2020 2:00 PM
Subject: off list questions


Hello Al and everyone else.
How may I write to someone, if I want to explore a linux topic with someone 
off list?

> On Jun 22, 2020, at 8:03 PM, Linux for blind general discussion 
> <blinux-list@redhat.com> wrote:
>
> My objection to using "literally" figuratively is that we then have to 
> find a new word for literally.  In the example here, "exploded" is enough 
> and is figurative anyway.
>
>
> I'll skip the other stuff, and take a second of amusement that this became 
> a topic on a Linux list.  (Then again, computers are quite literal--in 
> their numeric fashion.
>
>
> Best!
>
> Al
>
>
> On 6/22/20 6:47 PM, Linux for blind general discussion wrote:
>> Yeah, I don't really get the objection to the word "share" in the
>> context of telling someone about an experience, and while saying
>> someone has issues is vaguer than saying someone's nuts, I don't
>> really see such as euphemistic... granted, someone having issues could
>> just as easily refer to everyday stress and/or bad luck.
>>
>> I'm also okay with the word "literally" being used figuratively(e.g.
>> saying someone literally exploded as metaphor/hyperbole for a fit of
>> anger).
>>
>> Then again, perhaps my inner linguist is just more of a descriptivist
>> than a prescriptivist.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

