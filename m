Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0A045DC50
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 15:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637850537;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KPQR/xDx/NmyExD985Lqautd9xW54eii4YHna/CqruE=;
	b=ZtJJpmcOdcUrSIdaWwqpie72w9uztlrPvNyg7J1nGGltkUqRSTzZP6y07Wg9sg1ZBo1ia0
	bzk4xa1ONVFfaQAtINz0hbQrxTyNkk8nqkgZbkAmRk2gIQmWdnALeYDMCEFyQXZFVci3yU
	nbd/dIGT0MZINOzkYZQPGbp0YQUgn3g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-105-_YsT7AlpNRmINuGqpDFLEw-1; Thu, 25 Nov 2021 09:28:54 -0500
X-MC-Unique: _YsT7AlpNRmINuGqpDFLEw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0AD3F83DD20;
	Thu, 25 Nov 2021 14:28:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFBE571CBF;
	Thu, 25 Nov 2021 14:28:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1CB354BB7B;
	Thu, 25 Nov 2021 14:28:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APESJS4007136 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 09:28:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 31E8A2166B2F; Thu, 25 Nov 2021 14:28:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B6832166B25
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 14:28:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47E111066680
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 14:28:16 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-520-E0rB9wX0Nr64YnJ2vaDDmA-1; Thu, 25 Nov 2021 09:28:14 -0500
X-MC-Unique: E0rB9wX0Nr64YnJ2vaDDmA-1
Received: by mail-wr1-f41.google.com with SMTP id c4so12032099wrd.9
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 06:28:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=MYfGcvP94WLurIaX+1xTeBr05vL7y6CP4GS0I+4OlcY=;
	b=4cWSYtj2nqb0qSFrxNZJVE8GkyZbjkmv3WOPU8KWDaQ1hVX8SkFxLXKbXOESstuJ5U
	mHeO3AG+N9lOapFob8gpRkeXFW3JoREuKxOtCu1nXcg33eG9eM57kqdxgBcyFkwHlJsz
	+CpZ02vnr3f/v5drvDVaQ//BwyIw5bt2q4QdaE5s5MSKZCs9CWztiIDWOciGLzhLlj8E
	8fDz31dgvEi7/HGMDL/mKALe8rhFlsWof3yKVkuBIt7t5uOFP5boGdR8m5RAxa8opHJp
	G1yIlHun75HtkmZhP4TucgAXf+YNuuZTl3TxGgEUfG6pNIguMAbCFTJKEExXNKsKpYtI
	lt3g==
X-Gm-Message-State: AOAM5307EfsAZV02OStPu7IFdSfpGoHQG2blkxiv3Fota1w9V5cNssoZ
	DBX2DWOVSmLmbDfnc4IY8dCn8xV490Pajg==
X-Google-Smtp-Source: ABdhPJzJNL1jUrkTnWAU7Pmc5AxJUreFL2oUsoXA9MdbRiPCGTk40mNCDd3xSk9voUOP/lkWoTBM/A==
X-Received: by 2002:a5d:4b0f:: with SMTP id v15mr6921288wrq.264.1637850493059; 
	Thu, 25 Nov 2021 06:28:13 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id h2sm2869249wrz.23.2021.11.25.06.28.12
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 25 Nov 2021 06:28:12 -0800 (PST)
Message-ID: <184f5e9b-8258-63e9-b780-f52b2eb245a3@gmail.com>
Date: Thu, 25 Nov 2021 14:28:21 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: More Fedora ISO weirdness
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So...this just got weirder.


I got sound from the F34 iso. It installed fine. However, there's no 
sound on the installed system at all and looking around on DDG shows it 
as an issue with wireplumber.

So...Kyle at al.

Aside from Arch. What other distros cover most* of what Fedora does, 
with up to date apps, snap/flatpack support, a ton of packages in the 
repo (I tend to lean heavily on building from source/snaps or flatpacks 
over here on Solus) and, crucially, is an easy install?

I'll give Fedora points for a flawless install without issues like 
Ubiquity or Solus's installer and how easy it was.

That being said, before I totally give up on Fedora. Is there a link to 
the Mate 34 spin? I was going to see if that was a thing and try using 
that as a last ditch effort. I had sound from the (Gnome) live .iso and 
that worked fine, if a bit laggy. But once installed?

Nope. Nothing.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

