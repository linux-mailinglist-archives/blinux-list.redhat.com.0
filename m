Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 767826EE1D
	for <lists+blinux-list@lfdr.de>; Sat, 20 Jul 2019 09:03:39 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 99ECD30917F1;
	Sat, 20 Jul 2019 07:03:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C1ED2102470D;
	Sat, 20 Jul 2019 07:03:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A4B701800204;
	Sat, 20 Jul 2019 07:03:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x6K73FUo017894 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 20 Jul 2019 03:03:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1516F1001B04; Sat, 20 Jul 2019 07:03:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx14.extmail.prod.ext.phx2.redhat.com
	[10.5.110.43])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10110101F97D
	for <blinux-list@redhat.com>; Sat, 20 Jul 2019 07:03:12 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 02849309266A
	for <blinux-list@redhat.com>; Sat, 20 Jul 2019 07:03:12 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id z3so63186581iog.0
	for <blinux-list@redhat.com>; Sat, 20 Jul 2019 00:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:references:to;
	bh=H4e8dFxHOAOOTg0uG9DJzuQUNI6awuotfYKZ4+W2oQM=;
	b=m8cOTqX38f1SbKBv5E9xFs0pqfFrndgeQUEa8b3YSBSpSPgcmBvT4iyqcKP5SNQp1G
	DyeJcSKYbVHYAMjsf9bfA2WCcNnJsErw/t0zNufdIF05ugWnz1zJ7ZwRJo3nvvtlcrIX
	H2EyOc6iPGl4TkL9ayrerjYDisVZcWkUcC2ERYjMJ26xaehpHH3klF35qV6N3JlDrRQI
	6bLkRZeva+pkddpkwjMaSXk31m1FRpYsj64DJiL2X6iEhdVTftDPN/aPz+woUAU5xleg
	dhmj7zxBPRLKGe9Uoc+A7HKSTXCM5Aj0TCjSzQdiCNLkxcP0bLyqdALYflxjkeKyX0gt
	aBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:references:to;
	bh=H4e8dFxHOAOOTg0uG9DJzuQUNI6awuotfYKZ4+W2oQM=;
	b=PaulbJC6sqYp1U5yNuK6qZtVOLv7v58w9+A7rZhY3JpDgyeF2uCIcSdcIVdowBWL8m
	zOQ/nl3KuNocBoNBzmSznTS3RcqS/CNJGsZr0XV/nP5/Evz0j91iFVE5KLpDNOstZhfi
	HuPJk3as7FHmfWs9NG+9SthbzNPaUzeI3vRTmmoJBHuYp/QxHL1glHEXiUK8PIK+W8V5
	Jf2VtyuiZtMbVHkKojYzUavbcWzGrMG384/NFpy6cDltaOIGjhw1cmDMR6NXNpnOSm4B
	HT+ZMB01HKV8ydf1+hZD93GA42vhzW+Gl+yHqCPxTnkgE6IOru2OfgGdgvp+rwn2dMKV
	Oblw==
X-Gm-Message-State: APjAAAVOVY8p0GFzWmARs7rSeUJDNTNCu6IhD5p/G56a9o26s0xWcrYd
	CP4k+Hy9BRG3f1N7YGcn8jB3xwEMxV0=
X-Google-Smtp-Source: APXvYqwZdQeU1Sq6xA99htoYRiuzhULg/cZZDpwAQIT1UzDcXKypsUGBn78t044OKtARAARGp+n3AA==
X-Received: by 2002:a02:c80d:: with SMTP id p13mr60283091jao.59.1563606191165; 
	Sat, 20 Jul 2019 00:03:11 -0700 (PDT)
Received: from ?IPv6:2603:9002:306:2200:547c:828a:8c1e:e6bf?
	([2603:9002:306:2200:547c:828a:8c1e:e6bf])
	by smtp.gmail.com with ESMTPSA id
	e84sm39431977iof.39.2019.07.20.00.03.10 for <blinux-list@redhat.com>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 20 Jul 2019 00:03:10 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Fwd: mumble command-line client
Message-Id: <F5962FC1-0595-4A9D-8A48-291DE9A25B78@gmail.com>
Date: Sat, 20 Jul 2019 02:03:09 -0500
References: <20190720065212.9D74720FA5@nyx.nyx.net>
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.43]);
	Sat, 20 Jul 2019 07:03:12 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]);
	Sat, 20 Jul 2019 07:03:12 +0000 (UTC) for IP:'209.85.166.49'
	DOMAIN:'mail-io1-f49.google.com' HELO:'mail-io1-f49.google.com'
	FROM:'montanalag@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.166.49 mail-io1-f49.google.com 209.85.166.49
	mail-io1-f49.google.com <montanalag@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.43
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x6K73FUo017894
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Sat, 20 Jul 2019 07:03:38 +0000 (UTC)

Ok I am trying to get barnard going on ubuntu 16.04lts. I am pretty shaky on this stuff--
more souper user than superuser. Can you tell me what I need to do here?
T I A.

--Brian Tew


Script started on Sat 20 Jul 2019 01:38:59 AM CDT
root@Laggy:/home/btew# go get -u github.com/bmmcginty/barnard
# github.com/bmmcginty/barnard
../go/src/github.com/bmmcginty/barnard/ui_tree.go:159: undefined: sort.Slice
../go/src/github.com/bmmcginty/barnard/ui_tree.go:173: undefined: sort.Slice
root@Laggy:/home/btew# go env
GOARCH="amd64"
GOBIN=""
GOEXE=""
GOHOSTARCH="amd64"
GOHOSTOS="linux"
GOOS="linux"
GOPATH="/home/go"
GORACE=""
GOROOT="/usr/lib/go"
GOTOOLDIR="/usr/lib/go/pkg/tool/linux_amd64"
GO15VENDOREXPERIMENT="1"
CC="gcc"
GOGCCFLAGS="-fPIC -m64 -pthread -fmessage-length=0"
CXX="g++"
CGO_ENABLED="1"
root@Laggy:/home/btew# exit
exit

Script done on Sat 20 Jul 2019 01:41:57 AM CDT

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
