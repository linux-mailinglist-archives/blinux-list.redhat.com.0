Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2475A4C247E
	for <lists+blinux-list@lfdr.de>; Thu, 24 Feb 2022 08:34:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645688069;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ps/PiZZGvLt1ytGVdztZqHqG9n0IX1ZI3zG1u7aedjY=;
	b=h2o2ad5udhYnQQLFZoeISx8Y6SRRfnz8P5IiR2MGFQCWrxVcMscldU2VuMDX92tXB2qN7P
	WIrsErb8F3SRJOnBrGfCn7txKY+clNvDYgvqbjStgp74yWzHMWuGh+nM53g4oRfW99lHHY
	MA+ik1WTNLPXnhGLpCLaXJcBTabRxJo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-86-7wBisqYaN0OMjSYNt7wl-g-1; Thu, 24 Feb 2022 02:34:25 -0500
X-MC-Unique: 7wBisqYaN0OMjSYNt7wl-g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2B72180FD72;
	Thu, 24 Feb 2022 07:34:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B5F35ED23;
	Thu, 24 Feb 2022 07:34:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 94EB24BB40;
	Thu, 24 Feb 2022 07:34:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21O7RE25007489 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 24 Feb 2022 02:27:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 471EB407DEC3; Thu, 24 Feb 2022 07:27:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4208A407DEC6
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 07:27:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 29E0228EB2C6
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 07:27:14 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
	[209.85.208.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-107-4FfN5VEyMMiBcIBN345RPw-1; Thu, 24 Feb 2022 02:27:12 -0500
X-MC-Unique: 4FfN5VEyMMiBcIBN345RPw-1
Received: by mail-lj1-f181.google.com with SMTP id f11so1541905ljq.11
	for <blinux-list@redhat.com>; Wed, 23 Feb 2022 23:27:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=LxkmHG2BwwyM92yMA1aYlNcQn2vqP4reVyy084ZJWoA=;
	b=Usqe/PJQl5y9Ntn1xjFLN1nQZt4iIz0PDqjbyDIxmNNrbNnEDdpnpOfn1Tl/Ks3InT
	wjDC6qPtupQrTiQxtEe09Af7pTSdnyLaK6QayXFwQ8e06AEMBYkGqB5T9zuqtwW4F6Hm
	WuJ2XRTJ4euyYWNTa9WkOEX5B0rqeqrNwc1KHmpgnMa/MGc7DXCQL9Gc0ZFCnqyqEUCd
	pAoTq3QZofom29SqaPFtO1cUiqpt8dzgG0+5cqslI7LwPvkB3vxPcScQ5Ouq1Zvf/1Pu
	mpcAm3JjtAQY0R3eJxo2IpDodSShGfTGPoGd/QSgP6F3hRboUe6S8odPN9QnfxBfI6Ey
	qAOA==
X-Gm-Message-State: AOAM530oGo7LReg+O61zt6R1xVOzzG3Wp4cWV9U+vDNnDZWAm71kTgQf
	PlJK93DGx9SHnMiS6PqUj6WnxZNGQz4=
X-Google-Smtp-Source: ABdhPJxVi2DipbdQ4BMb0UH9d2VUfKV8fVG4oTM3wr8zdVd4VWYltLcm4TvqIAtraETibZzyqWH0MA==
X-Received: by 2002:a2e:8496:0:b0:246:4e82:c7d3 with SMTP id
	b22-20020a2e8496000000b002464e82c7d3mr1000774ljh.460.1645687630522;
	Wed, 23 Feb 2022 23:27:10 -0800 (PST)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id z5sm137459lfd.244.2022.02.23.23.27.09
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 23 Feb 2022 23:27:10 -0800 (PST)
Date: Thu, 24 Feb 2022 10:27:05 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Easiest way to back up/pull data from a cloud w/speakup or Fenrir?
Message-ID: <20220224072012.eun2tl6dqldvdoao@alex-portable>
References: <Yha/ohci65ePLjtV@waffles>
MIME-Version: 1.0
In-Reply-To: <Yha/ohci65ePLjtV@waffles>
User-Agent: NeoMutt/20211029
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Feb 23, 2022 at 11:13:38PM +0000, Linux for blind general discussion wrote:
> As it says...
> 
> What's the simplest way to back up data to a cloud server and pull it
> back down?
> 

I using git and yadm for that.

> I have a new laptop. It's running vanilla Arch post install, I want to
> pull down my configs and saved and backed up .config directory from my
> old machine, but every provider I'm trying needs a browser window, it
> seems like.


for transfering you can use rsync or magick-wormhole

> So is there any that I can run from a purely text mode install,
> preferably from the repos or AUR that'll let me download my files? I'm
> hoping there is because I, rankly, don't want to install a desktop for
> just this one thing

if you really want the cloud
rclone supports many providers.

-- 
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

