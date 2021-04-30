Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id DB20A36FF61
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 19:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619803282;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=obIBzS5FoW8bAxBnRttAaRPLlJ5svvc4mlEVCo9oYT4=;
	b=b4NpR4FphQzkEujd/xRlThLq/dIjwikxeOnZKMBYCEHUHlnIozNSV8qFK4mOaYcoaBjs1s
	BMhNuONgXi8ZCOz5D5qALVRES7vra/AdkN3ikGQRXiWbsUtqMkgcVk3cp+rex9uFgK1tlp
	qsT0pxdkimEcfcKfGl2FWCksGTizWiE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-IchC4L9NMui1qTsNPs_54w-1; Fri, 30 Apr 2021 13:21:20 -0400
X-MC-Unique: IchC4L9NMui1qTsNPs_54w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C97A80ED8D;
	Fri, 30 Apr 2021 17:21:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 976E22B0D6;
	Fri, 30 Apr 2021 17:21:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 00FF644A6D;
	Fri, 30 Apr 2021 17:21:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UHKmkb010903 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 13:20:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0A5B320951DD; Fri, 30 Apr 2021 17:20:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 068B220B8AD4
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 17:20:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8B4B8CDDE7
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 17:20:45 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-142-BHXR4BbdNUWzIjYJLIfNEw-1; Fri, 30 Apr 2021 13:20:42 -0400
X-MC-Unique: BHXR4BbdNUWzIjYJLIfNEw-1
Received: by mail-qv1-f43.google.com with SMTP id i8so5075582qvv.0
	for <Blinux-list@redhat.com>; Fri, 30 Apr 2021 10:20:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=BqQwkleDw2lB9RPZrZwB7uMURJAyAQ144JksLqWKR5I=;
	b=Cunl0/KuDWnuR7uRe111VP1t/pdkvhvKIZeKK6SkAcYka2MvDXjAEOIq23STPviXOf
	YLf3sFuTSRhI4LHqqiFxsOBD6dCaiVWMuH6SXtj89LjtiwTIdLKFvIVVkgsDk3P2Xpvi
	At9JtBmoiukzbKTJfHvGDiT3tTa/BLSynv5XW+xf6/ArLh9Q5FoZ4TYhpIvOraUMO/92
	m84inK6SAuJ+zMctxQn8XhpL3+qZIw/bih1I4yJc/+IIAZidmnlAWCo9FfRG/u2ALImR
	yiITkMvy7SASTA1aSIEpi88xOkCXCKdpbmN8kLJHXUYBwS1jSF+ISG7YyICj+5nbD8rw
	ctRw==
X-Gm-Message-State: AOAM533kNaWkrwJFCWGGkCRRZCC1mNTUAybusZ6h//n5mlHFAeqWu7cB
	wjiwRLiSQGTScRICWfpEdl4PEFldSos=
X-Google-Smtp-Source: ABdhPJx/9byU4hWaCw9wU5n0BmCtJ/l6j49JxPHlUVEdzS4FjwyO/7oPhSWNO8XKh935BhFQ0Vesxw==
X-Received: by 2002:a0c:cdc8:: with SMTP id a8mr6546793qvn.12.1619803241294;
	Fri, 30 Apr 2021 10:20:41 -0700 (PDT)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10]) by smtp.gmail.com with ESMTPSA id
	h62sm1932433qkf.116.2021.04.30.10.20.40 for <Blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Apr 2021 10:20:40 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: Best Distro for Blind
Message-ID: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
Date: Fri, 30 Apr 2021 13:20:41 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:56.0) Gecko/20100101
	Thunderbird/56.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8sCgoKSSBhbSBhIHRvdGFsbHkgYmxpbmQgcGVyc29uIGFuZCBhIExPTkcgdGltZSBXaW5k
b3dzL0phd3MvTlZEQSB1c2VyLiBJIGFtIAp3b25kZXJpbmcgd2hhdCB3b3VsZCBiZSBhIHJlY29t
bWVuZGF0aW9uIGZvciB0aGUgYmVzdCBkaXN0cm8vR1VJIAplbnZpcm9ubWVudCB0byBiZWdpbiB1
c2luZz/CoCBJIHdvdWxkIGxvdmUgdG8gYmUgYWJsZSB0byBtb3ZlIGF3YXkgZnJvbSAKV2luZG93
cyBhbmQgdXNlIExpbnV4IGZ1bGwgdGltZSBmb3IgYnJvd3NpbmcsIGVtYWlsLCB3b3JkIHByb2Nl
c3NpbmcgYW5kIApzcHJlYWRzaGVldHMuIEkgaGF2ZSBhIFRoaW5rcGFkIFgyMjAgdGhhdCBJIGNh
biB1c2UgZm9yIExpbnV4LiBBYm91dCAxNSAKeWVhcnMgYWdvLCBJIHBsYXllZCBhcm91bmQgd2l0
aCBWZW51eCwgYnV0IHRoYXQgcHJvamVjdCBzZWVtcyB0byBiZSAKZG9ybWFudCBub3cuIEkgaGF2
ZSBhIFBpIDNCKyBydW5uaW5nIHNvbWUgaGFtIHJhZGlvIHNvZnR3YXJlIGFuZCBJIGhhdmUgCnRv
IFNTSCBpbnRvIGl0IG9jY2FzaW9uYWxseSBhbmQgcGVyZm9ybSBzb21lIGNvbW1hbmQgbGluZSBz
dHVmZi4gRm9yIApkYWlseSB1c2FnZSwgSSB3YW50IGEgZnVsbCBHVUkgZW52aXJvbm1lbnQuCgoK
VGhhbmtzIGluIGFkdmFuY2UgZm9yIGFueSBzdWdnZXN0aW9ucy4KCgpKb2huCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

