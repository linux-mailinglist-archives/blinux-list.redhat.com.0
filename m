Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 360DF375DB3
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 01:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620345328;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pP07wte+sM0JsLtx+ihVJ9eCqC57tSLl6OS/TjSb39I=;
	b=LLEfnQjAQRdbM7W61O+MRsY+5d+tdwbnT4xqegSY9OqrmMgeRlfLIhj9P7KEzabkSjCZk1
	5NTgadO2Ua3r2/UjtaRxdUZEV6cXaQxORF58V85pZSQp/XnPn+z0ti0SOKaacBU3OCBQ3r
	nCEeVRpeg0NujvdjNtu/zQp6mkYZ9Yk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-536-SROX9XbXOuCSOXdnJCfB9A-1; Thu, 06 May 2021 19:55:25 -0400
X-MC-Unique: SROX9XbXOuCSOXdnJCfB9A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F3D4107ACC7;
	Thu,  6 May 2021 23:55:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA30DE71E;
	Thu,  6 May 2021 23:55:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15F3455355;
	Thu,  6 May 2021 23:55:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 146Nt5K4021690 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 6 May 2021 19:55:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 733D421D6742; Thu,  6 May 2021 23:55:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D534220535F
	for <blinux-list@redhat.com>; Thu,  6 May 2021 23:55:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 755958007AC
	for <blinux-list@redhat.com>; Thu,  6 May 2021 23:55:02 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-582-LN7g9Xq0P0G2y088LHj9hQ-1; Thu, 06 May 2021 19:54:59 -0400
X-MC-Unique: LN7g9Xq0P0G2y088LHj9hQ-1
Received: by mail-qk1-f182.google.com with SMTP id i17so6832650qki.3
	for <blinux-list@redhat.com>; Thu, 06 May 2021 16:54:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=X+vJnlFieIov7stTfLNrrPVEOd6+XvNyc7vpfujALHw=;
	b=UCweKNDDbjjL0hOBFXx1xuEXESZ/sY4NE8/xO5l14uUS8BblgV0gZb4sgA0VIAUn7Q
	0JMr2HAg5PEWfTkFIxprzpK7a3Zu/F044QhqyQq6b7+pMGu/tm47tk7We1b5dumETNVv
	a3IzDXhGrNpLLfuVIhmxn6hUsYvuzVA/csUlA8bx9lXznZsXltoGawCv9vcab2gnLpnC
	L0iOj5QQICeRUpdMrHICPeYAFmMty7Xs+vFH+sO7/NB9C5R0Z2cKz7h/e23Se8uO/wt4
	CzyTO15nBOyEQedhn6kuS/TRDEMWWAUXxTo2MFPBRSVVHB9W/65LKRlNQEis5e9Mwo/U
	8yaw==
X-Gm-Message-State: AOAM533pWbXlUCyA+p3/7eX+7k9/iiRw94Xhrb2+hyGRCJTTgpQVBVIH
	8A6ke1Rvdn3OKwPi4x+QYKbu4RRG/iuQR8kR
X-Google-Smtp-Source: ABdhPJxXln2UEu9hzHMooh+/WHDmeJMDDK+i9R+0v4Tdiy9UXSMz8fmyNXQQidLikIJb7Lf6HGpUWQ==
X-Received: by 2002:a37:ba03:: with SMTP id k3mr6771468qkf.496.1620345299027; 
	Thu, 06 May 2021 16:54:59 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:3c00::2fcb? ([2601:192:4c80:3c00::2fcb])
	by smtp.gmail.com with ESMTPSA id
	e12sm3522832qtj.81.2021.05.06.16.54.58
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 06 May 2021 16:54:58 -0700 (PDT)
To: orca-list@gnome.org, orca-list@gnome.org, blinux-list@redhat.com
Subject: Ubuntu Unity 21.04 is here
Message-ID: <b4c8d653-eb7e-3daa-436c-4e4ab23b22e0@gmail.com>
Date: Thu, 6 May 2021 19:54:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SW4gYSBMVUcsIHRoaXMgYWZ0ZXJub29uLCBJIGxlYXJuZWQgdGhhdCB0aGUgVW5pdHkgZGVza3Rv
cCBpcyBiYWNrLsKgIApUaGVyZSdzIGFuIHVub2ZmaWNpYWwgc3BpbiBvZiBVYnVudHUgMjEuMDQs
IGhhdmluZyB0aGlzIGFzIGRlZmF1bHQuwqAgSSAKd29uZGVyIGlmIHRoZSBuZXcgaW5jYXJuYXRp
b24gaGFzIHRoZSBzYW1lLCBvciBiZXR0ZXIsIGFjY2Vzc2liaWxpdHkgYXMgCnRoZSBvcmlnaW5h
bD/CoCBJZiB5b3UgYXJlIGEgVW5pdHkgZmFuLCBoYXZlIGEgbG9vay4KCgpDaGVlcnMsCgpEYXZl
CgoKaHR0cHM6Ly85dG81bGludXguY29tL3VidW50dS11bml0eS0yMS0wNC1yZWxlYXNlZC13aXRo
LW5ldy11bml0eTctdGhlbWUtbGludXgta2VybmVsLTUtMTEKCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=

