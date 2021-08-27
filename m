Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4E5E23F9E9B
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 20:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630088101;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=s8Fjouj2ldw5LaIfMdiBAkGgUjCHKuP+kGNHtOHwZG8=;
	b=h6s7R77tKCOMVwHNiY/bdYEISjdruZ/hPdTRTF2VuP7jptbhQOoekdVDrGsMviGx4KwY5x
	E99dFAdI8q3c/xITcLHFvmTQY4+GtSIRi0uwUoMx2IrqC59P6725raQczaVMuyQ+e7tFFC
	9keWHijwPyrDCh44BGRPVs9RuSKkO/I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-452--chEQ9toMy-OQw_HFu_1ew-1; Fri, 27 Aug 2021 14:14:59 -0400
X-MC-Unique: -chEQ9toMy-OQw_HFu_1ew-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66DF9107ACF5;
	Fri, 27 Aug 2021 18:14:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A39EF100AE35;
	Fri, 27 Aug 2021 18:14:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4F0B94BB7C;
	Fri, 27 Aug 2021 18:14:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RIEc1Q012611 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 14:14:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 68B741084485; Fri, 27 Aug 2021 18:14:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 638A110AF42E
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 18:14:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4AD4B811E7A
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 18:14:34 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-233-I5wJViJSOiKCAoVKK9OrlQ-1; Fri, 27 Aug 2021 14:14:29 -0400
X-MC-Unique: I5wJViJSOiKCAoVKK9OrlQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4Gx7CS3bBfz8tQY
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 18:14:28 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id wtkU5pHd4Aza for <blinux-list@redhat.com>;
	Fri, 27 Aug 2021 18:14:25 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4Gx7CN6p8Zz8tQW
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 18:14:24 +0000 (UTC)
Message-ID: <20210827.181429.958.4@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: unable to install from aur
Date: Fri, 27 Aug 2021 13:14:29 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17RIEc1Q012611
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Whenever I try and install from the archlinux user repository and the pacckage requires a gpg signiture, it fails.
This is the contents of my ~/.gnupg/gpg.conf:
charset utf-8
require-cross-certification
no-escape-from-lines
no-mangle-dos-filenames
personal-digest-preferences SHA512
cert-digest-algo SHA512
use-agent
default-preference-list SHA512 SHA384 SHA256 SHA224 AES256 AES192 AES CAST5 ZLIB BZIP2 ZIP Uncompressed
keyserver wwwkeys.pgp.net
keyserver hkp://pool.sks-keyservers.net
keyserver pgp.zdv.uni-mainz.de
keyserver hkp://keys.gnupg.net
key-server https://sks-keyservers.net
keyserver-options auto-key-retrieve

I can install with pacman just fine. Just not from aur.
What can I do to debug this?








_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

