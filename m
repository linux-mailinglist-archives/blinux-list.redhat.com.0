Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id C0CD2245616
	for <lists+blinux-list@lfdr.de>; Sun, 16 Aug 2020 07:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597555379;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fnOxotpcPb00iRIo2fditVnwSpYEWxSbl1SJHTH16I0=;
	b=VHlw6lcqIH1kIqMyVaryuiLAr/mg5cPJJI6xGWKE326TiM5IaCPwQnBasUtfAPpR5NTHMD
	98xR0POhQT0vJO4LpTZuoOnp5dC/bJE20ESaJwguz0EPDWn/1FMayEGwLhbjmWbAFqCWyq
	81pdRWGBdSknQq4ey/0GoiA3tMv2kic=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-519-bPT48Ex7Nc2cypTwejgSBQ-1; Sun, 16 Aug 2020 01:22:57 -0400
X-MC-Unique: bPT48Ex7Nc2cypTwejgSBQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 597FD1005E5F;
	Sun, 16 Aug 2020 05:22:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B7F7A1C93B;
	Sun, 16 Aug 2020 05:22:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 93D4F180B656;
	Sun, 16 Aug 2020 05:22:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07G5LXHg013106 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Aug 2020 01:21:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4705C205EB11; Sun, 16 Aug 2020 05:21:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 331D9205EAE6
	for <blinux-list@redhat.com>; Sun, 16 Aug 2020 05:21:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B19FF80088F
	for <blinux-list@redhat.com>; Sun, 16 Aug 2020 05:21:30 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
	[209.85.216.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-343-FFBMncPfPT-vQXutj2Xq-w-1; Sun, 16 Aug 2020 01:21:28 -0400
X-MC-Unique: FFBMncPfPT-vQXutj2Xq-w-1
Received: by mail-pj1-f47.google.com with SMTP id ep8so6128516pjb.3
	for <blinux-list@redhat.com>; Sat, 15 Aug 2020 22:21:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=LyznKE6GBDY0+mXamlIK1jgWdfVOqum80EIejkdizHE=;
	b=MyonzRifGp/OiUToXAfm0Pmk2oBRHRm+8ZAhqz9YnohgLHerL/Tp242vyskTpfdGox
	/iIC8jWb15+b667TMVJxln1miMexr7v7ZPsLE4qDl1MG/QgoW94ybVKQtOyafj/so4v3
	zN++ApXuLemEhGjINbxSBcjavjTXYRIY5nJbnVXYjre6BDL6mj7Yt5MMLH4cCazDhOM+
	D1r6niqVjQG6K/0rK/Go1m7/lv1BEF2tKbElzqnIi1AoEzkbg/K/pA7WM+xYYtov7GhF
	zmj4IJeGK8m6H0iYzfKUiV6nrFWlu9S36DSkQDwKL25MtMQYtgtgE5/xOHJE+aYLCq6F
	kRQA==
X-Gm-Message-State: AOAM531X0QJUWUqHz8ey0taAj37XYCpEZffseggw16D6jfYO0UAadWpH
	K7qaV4nFpQqr4Ms4wMgsVzOgauL7eIcH2A==
X-Google-Smtp-Source: ABdhPJyxOpnPj4NPrXCG8e1fpV9Q6EPXOLCquKaG5kV4AhlFek2bUYNtPBphWvr6aV4aKmhw5E60IA==
X-Received: by 2002:a17:90b:3603:: with SMTP id
	ml3mr7951070pjb.207.1597555287023; 
	Sat, 15 Aug 2020 22:21:27 -0700 (PDT)
Received: from [192.168.0.4] (72-160-122-204.dyn.centurytel.net.
	[72.160.122.204]) by smtp.gmail.com with ESMTPSA id
	k23sm12416617pgb.92.2020.08.15.22.21.25 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Aug 2020 22:21:26 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sat, 15 Aug 2020 22:21:24 -0700
Subject: Grub rescue
Message-Id: <F91A22C9-0D30-4653-AD7D-4C7643CA513B@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.502
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Is there any way to get braille or speech at the grub rescue console?

Tom

Sent from my iPhone

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

