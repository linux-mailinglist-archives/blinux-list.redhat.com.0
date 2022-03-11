Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A364D5BA1
	for <lists+blinux-list@lfdr.de>; Fri, 11 Mar 2022 07:32:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646980345;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0VFyWnHafjK9+ooaSlnmijVBA9gLI9QvPUaz+j7JTis=;
	b=CFT0JstPJZA+dogz8WbC69FOEmoHRt4gPQV1IV53vVZtzaFx/OvIom4gnxtC+4jsfI5D8h
	dNR6PJXE9X+Wc7oN3DNVP3qLYfyFAfXJRHyKluTZFxqcPjnvgY7Mko8Fy4D6wuclpjLivO
	UrgAVOQKikWidvnO53/+sGQkwgWXfGA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-x36Cdne-PpGWA8x6esgcHw-1; Fri, 11 Mar 2022 01:32:22 -0500
X-MC-Unique: x36Cdne-PpGWA8x6esgcHw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 02AAC802A67;
	Fri, 11 Mar 2022 06:32:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 878CF141DEE5;
	Fri, 11 Mar 2022 06:32:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2452F1940342;
	Fri, 11 Mar 2022 06:32:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 11 Mar 2022 14:31:59 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: timidity question
In-Reply-To: <mailman.1499.1646975078.111202.blinux-list@redhat.com>
References: <mailman.1102.1646908108.111207.blinux-list@redhat.com>
 <mailman.1206.1646923298.111209.blinux-list@redhat.com>
 <mailman.1216.1646925508.111209.blinux-list@redhat.com>
 <mailman.1127.1646925747.111205.blinux-list@redhat.com>
 <mailman.1344.1646965435.111205.blinux-list@redhat.com>
 <mailman.1424.1646969106.111201.blinux-list@redhat.com>
 <mailman.1363.1646973593.111205.blinux-list@redhat.com>
 <mailman.1397.1646974152.111207.blinux-list@redhat.com>
 <mailman.1454.1646974650.111209.blinux-list@redhat.com>
 <mailman.1499.1646975078.111202.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1512.1646980334.111202.blinux-list@redhat.com>
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

I can hear test.wav. I'm thinking to recompile timidity++ from source but 
I can only find old version not 2.15.

On Fri, 11 Mar 2022, Linux for blind general discussion wrote:

> Date: Fri, 11 Mar 2022 00:04:24 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: timidity question
> 
> Oh OK. I didn't realize you were in fact using the same file. OK so one more 
> shot in the dark that I just thought of. Maybe try running
>
> timidity -Ow -o testing.wav midifile.mid
>
> of course replacing midifile.mid with the name of the file you are trying to 
> play. Then try to play testing.wav or whatever you called the resulting wav 
> file. If it plays, then you most likely have a problem with timidity's sound 
> output.If testing.wav is silent or does not exist, then you have a different 
> problem not related to either the soundfont or the sound output.
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

