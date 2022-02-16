Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D7E4B84B8
	for <lists+blinux-list@lfdr.de>; Wed, 16 Feb 2022 10:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645004882;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PMN1sMOXJ1ke+e/+FyyNJkx5cB+tf7Key3M26jbSNKk=;
	b=Hg2YJPVD+uHPPph7p7jMKEe8ELVkX982vAq5RTRusB56EN3rlHn976+NNSUxEOEudFGBNt
	E+vNJhS2TUDxiyA+bJ5lfguqo8BiNYrOujZU95yq7FtWeXpMsrJ5/FhhujbSTVVEA9Ontq
	ChlODFPh9+UNoqMQv4wnoUdcShfuWzc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-164-gKGqpWHYPcG1eLqfseL5Cw-1; Wed, 16 Feb 2022 04:47:58 -0500
X-MC-Unique: gKGqpWHYPcG1eLqfseL5Cw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2EE83814246;
	Wed, 16 Feb 2022 09:47:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14CCA27CB7;
	Wed, 16 Feb 2022 09:47:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E76741809CBA;
	Wed, 16 Feb 2022 09:47:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21G9llIS003639 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Feb 2022 04:47:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6127C492D4A; Wed, 16 Feb 2022 09:47:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5CE5E492D42
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 09:47:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47CBE108C1C3
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 09:47:47 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-353-Waj35FXyP0uduOMpFkbYHw-1; Wed, 16 Feb 2022 04:47:45 -0500
X-MC-Unique: Waj35FXyP0uduOMpFkbYHw-1
X-IronPort-AV: E=Sophos;i="5.88,373,1635199200"; 
   d="scan'208";a="6068714"
Received: from nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr (HELO begin)
	([194.199.1.52]) by mail3-relais-sop.national.inria.fr with
	ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2022 10:47:44 +0100
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1nKGuV-0034C9-2K
	for blinux-list@redhat.com; Wed, 16 Feb 2022 10:47:43 +0100
Date: Wed, 16 Feb 2022 10:47:43 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
Message-ID: <20220216094743.o2d45wn3gt3yrluy@begin>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
MIME-Version: 1.0
In-Reply-To: <c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uLCBsZSBtZXIuIDE2IGbD
qXZyLiAyMDIyIDExOjQxOjQ5ICswMjAwLCBhIGVjcml0Ogo+IFN0YW5kYXJkIERlYmlhbiBkb2Vz
bid0IGluc3RhbGwgb24gbXkgaGFyZHdhcmUgZHVlIHRvIG5vbi1mcmVlIFdpLUZpIGRyaXZlcnMK
PiBiZWluZyByZXF1aXJlZC4KCllvdSBjYW4gdXNlIHRoZSBmaXJtd2FyZS1lbmFibGVkIG5vbi1m
cmVlIERlYmlhbiBpbWFnZSBmb3Igc3VjaCBhIGNhc2UuCgpTYW11ZWwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

