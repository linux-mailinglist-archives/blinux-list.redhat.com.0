Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8602E4D5818
	for <lists+blinux-list@lfdr.de>; Fri, 11 Mar 2022 03:24:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646965441;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fAx4LCbbCjQ8aIdxBhev1Jeo/29BDwC3dqOKHwKcsLE=;
	b=Gig8BhSleKm97ZNkRR3mp7QbhLyIvli30xAHLqQ0Fvc0B3KYqUEEAg+0Bheog8kmWQUj/M
	2sXrOw7V6wBmk/Txxqqnd6q2N8IWRbkKrE5btVTdIo9W85YkLGS5ydh0YMrKZYsSMv5O+a
	JYATefaaBT4tl5CinbbbwuW5+txOA6k=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-46-kLM3SbglPLO8cMqymT3gIQ-1; Thu, 10 Mar 2022 21:23:58 -0500
X-MC-Unique: kLM3SbglPLO8cMqymT3gIQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A831A29A9CCA;
	Fri, 11 Mar 2022 02:23:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 12288141DEE1;
	Fri, 11 Mar 2022 02:23:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id ABEFC197165F;
	Fri, 11 Mar 2022 02:23:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 11 Mar 2022 10:23:42 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: timidity question
In-Reply-To: <mailman.1127.1646925747.111205.blinux-list@redhat.com>
References: <mailman.1102.1646908108.111207.blinux-list@redhat.com>
 <mailman.1206.1646923298.111209.blinux-list@redhat.com>
 <mailman.1216.1646925508.111209.blinux-list@redhat.com>
 <mailman.1127.1646925747.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1344.1646965435.111205.blinux-list@redhat.com>
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

No error messages just playing screen:

root@NEWASUS:~# timidity g/midi/Roland/2nd\ Time\ Foreground.mid 
Requested buffer size 32768, fragment size 8192
ALSA pcm 'default' set buffer size 33868, period size 3760 bytes
Playing g/midi/Roland/2nd Time Foreground.mid
MIDI file: g/midi/Roland/2nd Time Foreground.mid
Format: 0  Tracks: 1  Divisions: 96
Sequence: 2nd Time Foreground
Copyright: (C)1991 Roland Corporation
Playing time: ~69 seconds
Notes cut: 0
Notes lost totally: 0

> Date: Thu, 10 Mar 2022 10:22:18 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: timidity question
> 
> That's very odd. If you have a soundfont line in your timidity config, it 
> definitely should play, unless the filename is misspelled or something. 
> Hopefully someone else has another idea, as having a soundfont file specified 
> in the timidity configuration should make it play midi. Do you get any error 
> messages when you try to play a file?
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

