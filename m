Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 124534AE64D
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 02:28:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644370106;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M2yb0INMhEVXbSa3Yf/jv+DBYLsaIloFSr7UdcU5waE=;
	b=BlbRoeAA8PV8PaceURy1cSJgblj223NdbtuZ4NiELvmzBxxFPvyk3GJBFYtGrpuTGBHfGu
	wItdQsuVXBi6Oihgmr85NkpS913fRoZPuXtEs97fRTUnzwLXA5sPC9WrtOaLB/rqd1ykFA
	5oyEnmHcUt31Ul2gPoh+fmQXc0em4Po=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-500-TLtku4CsMBqy1P00NDZYCw-1; Tue, 08 Feb 2022 20:28:22 -0500
X-MC-Unique: TLtku4CsMBqy1P00NDZYCw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0357A10247A8;
	Wed,  9 Feb 2022 01:28:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 69E2745D72;
	Wed,  9 Feb 2022 01:28:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22FD91809CB8;
	Wed,  9 Feb 2022 01:28:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2191S7KV013246 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 20:28:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6F8CE740A; Wed,  9 Feb 2022 01:28:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6ABF953DC
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 01:28:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3600B185A79C
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 01:28:04 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-355-UsyMJznfOs6i02MOHySLEQ-1; Tue, 08 Feb 2022 20:28:02 -0500
X-MC-Unique: UsyMJznfOs6i02MOHySLEQ-1
Received: by mail-qt1-f173.google.com with SMTP id p14so719789qtx.0
	for <blinux-list@redhat.com>; Tue, 08 Feb 2022 17:28:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=zDYgDPVjX8M2iAbmS3TRnnDa+XBSejv0Z1Kera9DIJo=;
	b=MxB8a79IPNxWdd3iwyWBOO+YcdlFNdKjHcmGppVWVxNWNuCyS9OZmrOS3rFP1BJ2YR
	uWpWwjZqQcaxXFDLYNrOX2uZegT2onmirGs/mtSRXF6FkF0fh/BDGmzc8oYY6j6O2lFd
	pjVFD1Up3bU2+ql6Jt5/ZiZ23ZI/dsF8MhGkrN7sgSqiOcAsoxC60Z3fmMLyks8GwGV2
	8mopRJIGFgJiTkBJp4R/6nZOigr3VdF4PQIg8fN2BqkF11loesizzMPakLuZiEdY7RYQ
	pAsCRin4nxxgcH6kq22u6IDHT6g2DB9kCTMkGESGa+JJdbvWol1uNh2pAQ8ZWeOsCsfm
	reXA==
X-Gm-Message-State: AOAM530ekMfUN3sfH3uXFi2jJWmdum5tBFJE9NJ8MCF8i5lqMeap1sq1
	wYyWCmoF+8En4h2n8/T++qhNB3TLSQ+ZizMgHiif38Yx
X-Google-Smtp-Source: ABdhPJz6QEPc3pIOuoOowDxiMdyRrr89H8Pjf8g6+exPQz9kEFdoExeg0YuzG3Ut+ERAq3PJTsLZe6myB0naxm9dFuM=
X-Received: by 2002:ac8:7dd5:: with SMTP id c21mr4922541qte.367.1644370081672; 
	Tue, 08 Feb 2022 17:28:01 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:518d:0:0:0:0 with HTTP; Tue, 8 Feb 2022 17:28:01
	-0800 (PST)
In-Reply-To: <YgMV348HDT3todvP@panix.com>
References: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
	<YgMV348HDT3todvP@panix.com>
Date: Wed, 9 Feb 2022 01:28:01 +0000
Message-ID: <CAO2sX31toO=qxKykAemhKi2HFwGSasjWNCUDf=O2uEEDS9Dqeg@mail.gmail.com>
Subject: Re: De-arrowing my system...how easy it is?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Any idea what package provides dumpkeys, showkeys, and loadkeys?
Because these commands don't seem to exist on my system.

the main repository in my /etc/apt/sources.list is Debian Testing if it matters.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

