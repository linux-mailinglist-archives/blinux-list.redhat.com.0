Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2556D4B74CD
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 20:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644954492;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ccNrpNPecJE9S2AZFCKAY09OLpjFhweEimsZmoWsreg=;
	b=EyRYaznx8uWk3RnCM885uc7T25yjcLrc13H9pIwD3kgYl9ntlwbHKJrTkfkbLuqhBv8egU
	DIVp2rpVs+3+VoE7OnZI3LXKDiDQ6URweyho25+qLFv0VJxwssGY2FY2mEjhhzI2OyVybU
	0+tffg67JvxF9vNkwF7ifOT666BcCG0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-57-8fVCIlDWNXaBOd_1ZbedXw-1; Tue, 15 Feb 2022 14:48:10 -0500
X-MC-Unique: 8fVCIlDWNXaBOd_1ZbedXw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 692E71006AA0;
	Tue, 15 Feb 2022 19:48:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA4225DF2E;
	Tue, 15 Feb 2022 19:47:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 168274BB7C;
	Tue, 15 Feb 2022 19:47:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21FJlgLi002456 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 15 Feb 2022 14:47:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2C330202699A; Tue, 15 Feb 2022 19:47:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 287302026E03
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:47:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2691B800B24
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:47:39 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-325-Sr9634AVPsucA6pe2bWQUw-1; Tue, 15 Feb 2022 14:47:37 -0500
X-MC-Unique: Sr9634AVPsucA6pe2bWQUw-1
Received: by mail-wr1-f53.google.com with SMTP id d27so30124589wrb.5
	for <Blinux-list@redhat.com>; Tue, 15 Feb 2022 11:47:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:message-id:mime-version;
	bh=74bVooucFAkQr05C/4VyjH7+9Q/RWd+O1T8q+ZuoAlg=;
	b=TzEefi50EfOO9foALEBgJTdoYiLPKjMJvR4Wqg0EMuNjoVIOLtlu/DmtheS0WNaA0K
	ekGmKDWI/jdGMCUmZ2FynFWDmMUaCbcW5kRubNXeJffR4X984oLN4WpupSiB+QbZjcpM
	pfXh7m6siBSBEwd0lm0AkynpW2U0qL+MdbMxGEQOlmtxLHpPXUprApJa2L7wUoe8hZCX
	LvIx8a5Ekl4APP8bXyOUn8eGWyQTDBe+I0xBNAzCbLSwhqAHiVbGWW6MFUJGOOXT9/YF
	vAv2DctUUSEoW12CAULiM4HX2FR6+DkYBMaefwxsbVWdaWxGaMmeFpQkTBW/5NTnHUXJ
	Jg4g==
X-Gm-Message-State: AOAM5327gy/AdihbAwMsAvmv/pOpODspB8VA9SNQRkA2WAZNMLJoDao9
	4rjnKc9c/irb4P+iGbX8qVaXNhLJCzI72w==
X-Google-Smtp-Source: ABdhPJzaIIHZZpQybcgaNSIS1ty7JPCJ10p2Bt1HEPL8u32Z3bWissX2N9IX+jWdjLUTvPjHjPZYug==
X-Received: by 2002:a5d:684b:: with SMTP id o11mr451973wrw.76.1644954455766;
	Tue, 15 Feb 2022 11:47:35 -0800 (PST)
Received: from brandt-slint ([197.184.177.21])
	by smtp.gmail.com with ESMTPSA id
	s7sm4438904wro.104.2022.02.15.11.47.33 for <Blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Feb 2022 11:47:35 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.local>
Date: Tue, 15 Feb 2022 21:47:17 +0200 (SAST)
To: Blinux-list@redhat.com
Subject: Accessibility of installing Distros?
Message-ID: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,

As most of you probably know, the calamares installer is the "most 
popular", (more like, "most often used") installer for Linux distros.

Last I checked, and yes, I must admit, that was a while ago, the thing was 
not at all accessible. Is that still the case?

I know that Ubuntu broke their installer, but Fedora's "Anaconda 
(Spelling) installer" and the TUI installers for Slint and Debian still 
work, as well as installing Arch in which ever way you choose to do so.

What other options do we, the Blind Linux users have? And, no, I really 
don't count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible Coconut, 
etc.)

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

