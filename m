Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D33AA57E48C
	for <lists+blinux-list@lfdr.de>; Fri, 22 Jul 2022 18:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658507935;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xdTM/x16kLY78v1i/fVSxuwaRz7utAIz0Gk8KTluQYE=;
	b=e6c59XJ0vWUPfDANg8I5gTvgbjkwTU7Z8MX2nmrH8jauCaG9x9MnW6iOti/TEUJ4rarN9f
	fbu7AjHp5jDWz8+9YRhnNuK15vfI96coG5mS4p8rHt5FvOtSFfoKqakHpLeR3PEo8oe70c
	rWnzrfuvFSogheOPI2Y+M+7HBWrdG3g=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-179-SGDoehXWPUycJ-jCr6NALA-1; Fri, 22 Jul 2022 12:38:52 -0400
X-MC-Unique: SGDoehXWPUycJ-jCr6NALA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4EA51C05AFD;
	Fri, 22 Jul 2022 16:38:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D279C40CF8F0;
	Fri, 22 Jul 2022 16:38:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 809321947057;
	Fri, 22 Jul 2022 16:38:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 22 Jul 2022 09:38:38 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [slint] Re: The Register: Tavis Ormandy ports WordPerfect for
 UNIX to Linux (fwd)
In-Reply-To: <mailman.35980.1658504582.111209.blinux-list@redhat.com>
References: <mailman.35571.1658501727.111207.blinux-list@redhat.com>
 <1764ad6f-992a-3067-5432-cdd7d9118064@hubert-humphrey.com>
 <mailman.35980.1658504582.111209.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.7471.1658507923.3475251.blinux-list@redhat.com>
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
Cc: slint@freelists.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

My guess would be we can't find the .deb package because they are waiting 
for an answer from Corel on whether it is legal or not before posting it. 
That is however just a guess.

Tom


On Fri, 22 Jul 2022, Linux for blind general discussion wrote:

> If Ray Jackson were with us now, he would have loved that announcement.
>
>
> On Fri, 22 Jul 2022, Chime Hart wrote:
>
>> Thank you Jude: Yesterday 1 of my Linux experts sent me a link to that story,
>> but while there are mentions of a .deb file, I saw none. Certainly, while I
>> really like NANO, at least WP would let me see reveal codes. Thanks in advance
>> Chime
>>
>> ===============================================================================
>> The Slint mailing list.
>> Archive: https://www.freelists.org/archive/slint
>> To subscribe or unsubscribe, email slint-request@freelists.org with the
>> subject
>> 'subscribe' or 'unsubscribe', then answer the email you will receive.
>> More: email slint-request@freelists.org with as subject 'help' or 'commands'.
>>
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

