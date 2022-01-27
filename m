Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFCF49E4B5
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 15:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643294143;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0LMhAbYbd4VwAY4Rya38Nz15GjrDYXn/WpD2uoEnQw0=;
	b=VkEp0xsTpKe8oAPmkNEk4R/PbSktBcRPilwlfMHLJ8e6L2WQe4QRDmzGBPI9aNU1zd7FQH
	9JmGapoFIQ9rrNinoRp3EjMbEx3zREd7tyPC89SSwTW0TINTTcaexhXGKm9McjCqG5YhSv
	zOklFvsmLg9qpIkMLFzMBNWPwak2Q+U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-186-AjR3pXzKO-W0NWIYo5NAGw-1; Thu, 27 Jan 2022 09:35:39 -0500
X-MC-Unique: AjR3pXzKO-W0NWIYo5NAGw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 52C941923B80;
	Thu, 27 Jan 2022 14:35:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A76EF72414;
	Thu, 27 Jan 2022 14:35:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C56BB1809CB9;
	Thu, 27 Jan 2022 14:35:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20REZHIg007848 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 09:35:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A210C740A; Thu, 27 Jan 2022 14:35:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D8D576EE
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 14:35:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF239811E7A
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 14:35:14 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-437-vsiVKcjHOtOGLNIlfs65hg-1; Thu, 27 Jan 2022 09:35:12 -0500
X-MC-Unique: vsiVKcjHOtOGLNIlfs65hg-1
Received: by mail-qv1-f47.google.com with SMTP id g11so2970237qvu.3
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 06:35:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=WKCMBNrSkONfaehm2Xf7o5br18I7oYGjmwfpETsikzo=;
	b=blsmlQjvXbYS31UyV82UfXt3i/JI80vyietN/ugvOBTvMK8B+A1hUDvuDN0DjEm1ZA
	kycBlsM1fKWSp2DcrRmeSEu7a2jDJOdrtZc27ydBi5CrhfJIJnA3OprLUGzCCA7U2rlG
	vyjUKIW+84jCmUUuk0Bmnn9Nc0dvR2eiUPssE6jdGiymY9cnapQIdzSC9BOwhc9mnzRG
	9mUvt7jkWZhK56xjK2cnK5XpYYjhyJtQ5l5z5KYZVEUfYTHaWbXkGScg6EVjCrcZrfi/
	U+xWToyOmTm5V4PrULteh1CBzCw0mPaIkXUlQkUy7E5j12W1H8vQ9HZaeJZObOzGI9N4
	ItMA==
X-Gm-Message-State: AOAM531aQ/xF6/gg4GmXQsbKPkAGRB/6Z5czXNG83kQ5mjI5utJ+/Rdr
	rkXK7ClyRoaThrk/V7ruixPUQkq4T5s=
X-Google-Smtp-Source: ABdhPJw9FPONnNrq3l+/0MKXRFyQ6TLzN/c48pwtX5PMSMjgjRVt7SpYB4i2NhOep1Ox5fH3xEgeqg==
X-Received: by 2002:a05:6214:2aa5:: with SMTP id
	js5mr3471300qvb.47.1643294112079; 
	Thu, 27 Jan 2022 06:35:12 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id w3sm1081314qta.13.2022.01.27.06.35.11
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 27 Jan 2022 06:35:11 -0800 (PST)
Date: Thu, 27 Jan 2022 09:35:09 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
Message-ID: <d890d12c-47f-68ed-85f3-cf1653d5b49c@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Look at mpv, it can handle sub streams seperatly.  Start with the man page, eisly found on google.   Here is a web page that might provide a starting place:

 MPV player config for subtitle navigation, subtitle looping, copy to clipboard, dialogue-only

https://www.reddit.com/r/LearnJapanese/comments/ec2ect/mpv_player_config_for_subtitle_navigation/

On Wed, 26 Jan 2022, Linux for blind general discussion wrote:

> On a somewhat related note, does anyone know of anything that can take
> a subtitle text stream(generally plain text, usually .srt or .ssa when
> not muxed in To a video file) and spit out audio of the dialog that's
> timed to the timestamps in the subtitle file? Bonus points if,
> assuming the subtitle script includes character tags, there's a way to
> set different synthesized voices for different characters. Would be
> handy for media that has English softsubs, but no English audio...
> though even just a means of converting .srt or .ssa to something more
> human readable would be useful.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

