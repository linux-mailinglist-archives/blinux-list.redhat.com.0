Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD61492967
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jan 2022 16:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642518574;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LeYMv8g8MeGWnI9YUP0WagsnXlRwG3eJCmxOtY8vhsU=;
	b=f2V17AmO3f4UhzzIEFZma1DtquBkan40U/omj3nGq70k0RUr6wO7jZZP5kE8An9A4zc0iD
	SQSO21ACuGikPrevasU6ru/7QM91BMONf33EFlQvJIeNMziUt7120SHM2clrJtpF6NZ87G
	NQb42yvH49BOHaZqJhd8A7Sc17Z+iTY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-156-6gkLpB82PSahC9lnZ-nD5g-1; Tue, 18 Jan 2022 10:09:30 -0500
X-MC-Unique: 6gkLpB82PSahC9lnZ-nD5g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 27C2B1932481;
	Tue, 18 Jan 2022 15:09:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE69281F73;
	Tue, 18 Jan 2022 15:09:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D0F1A4BB7B;
	Tue, 18 Jan 2022 15:09:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20IF7jPO021268 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Jan 2022 10:07:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 04455492D1D; Tue, 18 Jan 2022 15:07:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00BD8492D19
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 15:07:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DC049185A7BA
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 15:07:44 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-270-klY5agtNOVCuQmTCDg8NLw-1; Tue, 18 Jan 2022 10:07:42 -0500
X-MC-Unique: klY5agtNOVCuQmTCDg8NLw-1
Received: by mail-qt1-f181.google.com with SMTP id f17so22394277qtf.8
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 07:07:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=WmyWCJncgo9dOGEwPkfnrKbQQOo0AR7geyH5OZPiXjI=;
	b=EFEiwBdUB08P9MaixqKPLiKjDGTtovAE0874HajJWztWlAWLWJt71R25mSvo17Aqyp
	Kfu/S5maMRtjcCRbBtHp05fpExld4l8DZTITj5xn6+yL+M84Kiq5p+OL9eYjgI9OpeCR
	GDohKCtkrXfjkOqWJbT2ZEs/F9cysZXa/8k2tNpoOe/zCzsq328ArCoF87gnCp7RE3Gu
	Q/Yc3SyT7Vx0L+mpELlYaoqH5bXuwIHsdHF6GXgGnb0k+hbQYtSwQyM3x14CGSAYaUhc
	O+S2bPw3yvAOWxQpCIK2kTC6Fh7pvrApCvmowFLpo5JdF/NhI4DggKYgtB1xlJLAGSzo
	iTDQ==
X-Gm-Message-State: AOAM5317V90FrUNFDgEzXMz89LFdPMuoeZPBUau3OrquSFAtAFmQAbZf
	K7a7ZxXy+VlQmTvSuRRDHT+Lbjnxhb/9coqb4eToVM8U
X-Google-Smtp-Source: ABdhPJypLD5GXg6IIyF2iduAuKYPHI2RN0rlpGlOggkQtU9oJpoiYyvxROCRx00YDe+5h2icaueUp3lBFnY90MM74Y4=
X-Received: by 2002:a05:622a:1115:: with SMTP id
	e21mr12296390qty.258.1642518461195; 
	Tue, 18 Jan 2022 07:07:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Tue, 18 Jan 2022 07:07:40
	-0800 (PST)
In-Reply-To: <6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
Date: Tue, 18 Jan 2022 15:07:40 +0000
Message-ID: <CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
Subject: Re: starting out with linux
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I haven't messed around much with keyboard layouts, but I noticed my
system doesn't seem to have a /etc/vconsole.cfg at all.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

