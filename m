Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6F64B24D4EF
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 14:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598012693;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fG9sJZmFw09GC4B902+PwtYDXXHHUWcpJJ2B2KemIeg=;
	b=cku0BumT+YRJaMXY3Kb3Fy4QqFfarLFjKuvUp6qZaLPjS5hVPdbIZfhlArIXqjTEXWJF5G
	DrQhMf0lun+/bsu7fJJqNayCfjGHcJmGQ8i0J6aAidZiUiHCFHJcMw6hbT1yT4S1X6hZS1
	NNDqF6weqXP/k31lTO2anh2KJNYqf2Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-13-ZCRAqmdQMFSTY9p22Di8FA-1; Fri, 21 Aug 2020 08:24:51 -0400
X-MC-Unique: ZCRAqmdQMFSTY9p22Di8FA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8952C1015C9E;
	Fri, 21 Aug 2020 12:24:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89A017AEC7;
	Fri, 21 Aug 2020 12:24:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 553749A021;
	Fri, 21 Aug 2020 12:24:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LCOdT9023130 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 08:24:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2006BF5576; Fri, 21 Aug 2020 12:24:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B947F5AE6
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 12:24:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1C0B8EDF09
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 12:24:36 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-499-cfb4iaXVM76O5Tim2PfhPw-1; Fri, 21 Aug 2020 08:24:33 -0400
X-MC-Unique: cfb4iaXVM76O5Tim2PfhPw-1
Received: by mail-wm1-f54.google.com with SMTP id t2so1408512wma.0
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 05:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qCInzsPWjJUCUOefNiI2bqbOpPkzbA8iKxhZvouoz4Q=;
	b=CuwQH5dKbouZh8zxRvGU4t2Z8G/Dy8ZM1Ufjt2IJny/jfIpqbzoNHDRWR2BaYnOO7/
	zDvXnP3h9AXvCK8H5/3cjpaULI4iYvU7bELgPQvZvRwZEe3wvgLQbk4Eg4tQD729Eqhb
	EOPwyheqFyw8fPXiMnAGl4EWCzMk2BFQjP4j6p0tsX92OnLtWUavalhbjdddiqDGdfm5
	4YaijXnLEZhD196BrEgztyvbelHzzN4PlysghVNZ0PgbbPLLGrzh32eiqxSYTFunRpYM
	hxOvG1Ixvb2GGX+l9gyVSpjQw9930u72pmlcBNoy2IcmGb7RxGITWJD/Trc4EKbhCJgz
	yiiQ==
X-Gm-Message-State: AOAM5335GpggJEDJJOnvhMtXnilpdobjPwpiVgJFDnG4aUK1OZCoAxVt
	okmEdI04ID3+DufzRAUY2kfyjZ7xRAbBYw==
X-Google-Smtp-Source: ABdhPJzxtHPJTo8RDisiupfNyq013xv7klfI/u8qJubYngtTKv5DZ8FLmGQpIdoyw1h7s6rBfxIThw==
X-Received: by 2002:a7b:ce8c:: with SMTP id q12mr3137049wmj.189.1598012672539; 
	Fri, 21 Aug 2020 05:24:32 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433]) by smtp.gmail.com with ESMTPSA id
	q19sm4278985wrf.48.2020.08.21.05.24.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 21 Aug 2020 05:24:31 -0700 (PDT)
Subject: Re: Accessible Distros for a beginner?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
Message-ID: <68ff810e-ebd5-8eb4-f6db-5c268f40d837@gmail.com>
Date: Fri, 21 Aug 2020 08:24:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
Content-Language: en-US
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

NVDA will not run in Wine. I heard it may have something to do with wine 
lacking accessibility libraries or something, but I'm not sure. In Wine, 
it either plays its startup sound and dies, or it does nothing at all. I 
can't remember exactly, as it's been a long time since I've played with 
it. I do recall playing with it on ReactOS, which is essentially a full 
OS based at least partially on the Wine code base but including its own 
kernel and graphical desktop environment. NVDA did not run there either, 
and I saw something I thought I would never again see in life, the blue 
screen of death. So Orca is currently the only workable solution on any 
Linux desktop environment, and applications running in Wine will need to 
self-voice in order to be usable. Perhaps this has changed in the years 
I have used exclusively non-x86 hardware, but I haven't heard anything 
through the grapevine that tells me anything different, so likely this 
hasn't changed.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

