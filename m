Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A2E1D3F9FB5
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 21:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630091709;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7sDEYhighHI11bS67vNOPCGbbGvWuWr5dZwK8zw9FEc=;
	b=f/90M5t7A/mu7QY1G3teL1zNuuorUZROrklG4em/gY7zc/A9fy7x9Heuvk1+1Wee04Mi40
	9HJJ1XSu5lQKdcTnPKTm+gy/Vmtzf0qglvzAXnJGEH84kY3uKk2lFgWnNNIL58u1XNbK1j
	xlm9qzsXmbLcGWUKmZCNXh4XDqcfyRc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-291-CV8jFQ4AMned5g3f-ghJeQ-1; Fri, 27 Aug 2021 15:15:07 -0400
X-MC-Unique: CV8jFQ4AMned5g3f-ghJeQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BCBD6CC624;
	Fri, 27 Aug 2021 19:15:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DB4868D9B;
	Fri, 27 Aug 2021 19:15:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F021F4BB7B;
	Fri, 27 Aug 2021 19:14:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RJBp86017463 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 15:11:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 99E572035729; Fri, 27 Aug 2021 19:11:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 947472028695
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 19:11:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E442B800963
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 19:11:48 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-486-VtCAwcvnMqarKVVAGBix2Q-1; Fri, 27 Aug 2021 15:11:46 -0400
X-MC-Unique: VtCAwcvnMqarKVVAGBix2Q-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4Gx8TX4k2Zz8tQY
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 19:11:44 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id eFjmTt7OQHoH for <blinux-list@redhat.com>;
	Fri, 27 Aug 2021 19:11:43 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4Gx8TW3CTyz8tQW
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 19:11:43 +0000 (UTC)
Message-ID: <20210827.191148.445.6@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: unable to install from aur
Date: Fri, 27 Aug 2021 14:11:48 -0500
MIME-Version: 1.0
In-Reply-To: <f27ef494-11d0-71e1-dc0e-f93762bfb28b@gmail.com>
References: <20210827.181429.958.4@[192.168.1.100]>
	<f27ef494-11d0-71e1-dc0e-f93762bfb28b@gmail.com>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17RJBp86017463
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux for blind general discussion <blinux-list@redhat.com> wrote:
please leave only one keyserver option. i recommend using
hkps://keyserver.ubuntu.com

This did dnot work. I still get, for example:
    lltag-0.14.6.tar.gz ... FAILED (unknown public key 449190F3235ABD3B)
==> ERROR: One or more PGP signatures could not be verified!


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

