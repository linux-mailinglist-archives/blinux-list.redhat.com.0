Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0D55F4010E6
	for <lists+blinux-list@lfdr.de>; Sun,  5 Sep 2021 18:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630859619;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=forW7OjRD4vFF/q+Q2GgVFw5zSnvBx0AfLij1UlIyMI=;
	b=arCT407vfJOUUfgPvuDjvtG8h+mBTEWg+lHGaPKeFy9TGr/EZSb7kXzHxz4ZxYxfNA6OrI
	9ZAzDlGTpSgmqdrfmTrOok/kckHog9zJ/mWAOse1s2sRvKGW16rb+kSKcOBEODN5TaPuTi
	aY6M2kMTUUVow2ZLEKjcEpa7aYaiArE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-284--Me0lGs_NjqR54JtXpeDrw-1; Sun, 05 Sep 2021 12:33:37 -0400
X-MC-Unique: -Me0lGs_NjqR54JtXpeDrw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4CCC107ACE4;
	Sun,  5 Sep 2021 16:33:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E25E60BF1;
	Sun,  5 Sep 2021 16:33:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 44C144EE0C;
	Sun,  5 Sep 2021 16:33:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 185GXCSu032031 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Sep 2021 12:33:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 48407216781F; Sun,  5 Sep 2021 16:33:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 428B6216781E
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 16:33:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D3E0858EEC
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 16:33:09 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-592-wnCZjPkVMqCJMIfVer3axQ-1; Sun, 05 Sep 2021 12:33:07 -0400
X-MC-Unique: wnCZjPkVMqCJMIfVer3axQ-1
Received: by mail-qv1-f53.google.com with SMTP id e18so2738582qvo.1
	for <blinux-list@redhat.com>; Sun, 05 Sep 2021 09:33:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=hR7TX3wGbu0fh6Skpp0/TQ4eataAg3NtId6+viG0uUc=;
	b=AYOD6DgP+f6OstPfL+ty9PiCwQ15qapYMM2FpSIkXqOaDotvzC6/+h5hrbBG7E48CJ
	X0k0Q1fRz73aO+D2oElyu1zUQnODCEfVP+ieAHHtSGKWsuPNh695yb+aMRzwjEsbW4wr
	cRzE4zs38IO+SGFKlDuETvyiPt38/1qXtefaubTIn2e8wLWnLDyl1qzhDeeGMJFfuF+h
	L/0bhD9sHkEZZwwGz8Uvw0BsXLI4PF4OwfMVwIXViUPMTztQ/t4rRajcAh92qN/pqLAl
	5ES8M/33xrY1Fu5n+HkOK5DoSW18PQGBv3Op14AFYrFJk9gGj2Yiel+lS84ve4gEqyQ7
	GwDQ==
X-Gm-Message-State: AOAM532ztayegt7+nC6L3Bm1YhH/TuR5Qi2JuknLhTHTdXjYa8agJa2W
	LkmtiX8rB8vl/Gh1+bM7L1KbE+EchI2DbQ==
X-Google-Smtp-Source: ABdhPJwWk0byPSo56kgJhvN40HOgvs4vCAkQPvuqqiv6holLkBhMRp7/dJlbx6lxk4qbik6MuLnSSA==
X-Received: by 2002:a0c:f843:: with SMTP id g3mr8564858qvo.6.1630859586969;
	Sun, 05 Sep 2021 09:33:06 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::c275])
	by smtp.gmail.com with ESMTPSA id
	l13sm4346002qkp.97.2021.09.05.09.33.06 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Sep 2021 09:33:06 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: No GNOME Terminal on Jenux?
Message-ID: <e532d780-aba9-1a5b-64f6-880ade71e38b@gmail.com>
Date: Sun, 5 Sep 2021 12:33:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
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

R3JlZXRpbmdzIQoKCkkgaW5zdGFsbGVkIEplbnV4IHdpdGggR05PTUUsIGFuZCBmaW5kIHRoYXQg
dGhlIHJlc3VsdGluZyBzeXN0ZW0gaGFzIG5vIAp1c2FibGUgR25PTUUgdGVybWluYWwuwqAgV2hl
dGhlciBJIHRyeSBzdGFydGluZyBpdCB3aXRoLCAKImdub21lLXRlcm1pbmFsIiwgaW4gdGhlICdy
dW4nIGRpYWxvZ3VlLCBvciBzZWxlY3QgaXQgZnJvbSB0aGUgb3ZlcnZpZXcsIApub3RoaW5nIGhh
cHBlbnMuwqAgSSBhbHNvIHRyaWVkIGdldHRpbmcgYSB0YWxraW5nIGNvbnNvbGUgb24gdHR5Miwg
YW5kIApmaW5kIHRoYXQgc3VjaCBjb25zb2xlcyBkb24ndCBzcGVhay7CoCBIb3cgY2FuIEkgZ2V0
IGEgdGFsa2luZyB0ZXJtaW5hbCAKb3IgY29uc29sZSBvbiB0aGlzIHN5c3RlbSwgYmVzaWRlcyBy
ZWluc3RhbGxpbmcgYW5kIGNob29zaW5nIE1hdGU/CgoKClRoYW5rcywKCgoKRGF2ZQoKCgoKLS0g
ClNlbnQgZnJvbSBTbGludCBHTlUvTGludXguICBodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9v
ay5odG1sIGZvciBpbmZvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

