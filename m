Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F12A4D6265
	for <lists+blinux-list@lfdr.de>; Fri, 11 Mar 2022 14:29:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647005357;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gIm5LR5cHK3v3tQoSm/mRVzC9IsKH6TmjXlpEy3AG/0=;
	b=UUDMmjH/ZrFbbjGEpKMC9MNDkGUXk4X/DD6GVQkNfQJqTERDIyZdzjSiDu/aeZjAoUkteR
	6DroBKO06ia3exFj1426rXf2DVWz0H557QixQ7Tn5qp2NeDhOkBcsH8mSpZYIKHPGl4Yqm
	+caOl8AGWtVJzBDjpWjtmq7Nm9QZ6zg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-29-GjOxAQqWOcazUR_uRUQFJg-1; Fri, 11 Mar 2022 08:29:15 -0500
X-MC-Unique: GjOxAQqWOcazUR_uRUQFJg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 299FC3C01B8C;
	Fri, 11 Mar 2022 13:29:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 637A71454543;
	Fri, 11 Mar 2022 13:29:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E269F194035F;
	Fri, 11 Mar 2022 13:29:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 11 Mar 2022 21:29:01 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: timidity question
In-Reply-To: <mailman.1517.1647004193.111201.blinux-list@redhat.com>
References: <mailman.1127.1646925747.111205.blinux-list@redhat.com>
 <mailman.1344.1646965435.111205.blinux-list@redhat.com>
 <mailman.1424.1646969106.111201.blinux-list@redhat.com>
 <mailman.1363.1646973593.111205.blinux-list@redhat.com>
 <mailman.1397.1646974152.111207.blinux-list@redhat.com>
 <mailman.1454.1646974650.111209.blinux-list@redhat.com>
 <mailman.1499.1646975078.111202.blinux-list@redhat.com>
 <mailman.1512.1646980334.111202.blinux-list@redhat.com>
 <mailman.1422.1646988332.111207.blinux-list@redhat.com>
 <mailman.1402.1646991817.111205.blinux-list@redhat.com>
 <mailman.1465.1646993442.111206.blinux-list@redhat.com>
 <mailman.1534.1646994043.111202.blinux-list@redhat.com>
 <mailman.1517.1647004193.111201.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1526.1647005352.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Successful! Thank you very much!

On Fri, 11 Mar 2022, Linux for blind general discussion wrote:

> Date: Fri, 11 Mar 2022 08:09:44 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: timidity question
> 
> Try running
>
> timidity -h
>
> and looking for the word output. Under "Available output modes" it should 
> give you a list of what options you can use. I have
>
> -OO
>
> both O's capitalized, which indicates libao output. I believe this is what 
> SoX uses by default, so it just may work.
>
> timidity -OO file.mid
>
> does play here, although I also get playback using the default output mode. 
> But do give that a try if you have -OO listed in your output modes, hopefully 
> it will help.
>
> ~Kyle
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

