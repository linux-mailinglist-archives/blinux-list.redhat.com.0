Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 649E03D03D6
	for <lists+blinux-list@lfdr.de>; Tue, 20 Jul 2021 23:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626816372;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=auvyiuiGcCYR1vnn03aK9tJmB0+AvBNxO1RpOCoPeIo=;
	b=XQPvS5YTLswXL2skm4/HQRVH4MvkQD92NznKDJ+2DRfXUeVjDDym9gHT3hkcldpX6TeuCI
	E6QsvqZCHytrNlKy+BUqQ6Rw/Pk5LddnMDgXZizsWBiwIwdIEhiL+01q+dKtr+WdN++dCN
	/mWnrWYDscbC79aw/p9c9sHIknTUiqA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-450-Ue1NiJWaNY-CLQlelbk8Ow-1; Tue, 20 Jul 2021 17:26:10 -0400
X-MC-Unique: Ue1NiJWaNY-CLQlelbk8Ow-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D86A3804301;
	Tue, 20 Jul 2021 21:26:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22FD05D9D3;
	Tue, 20 Jul 2021 21:26:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ED1351809C99;
	Tue, 20 Jul 2021 21:25:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16KLPoha014012 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Jul 2021 17:25:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 82AD61013130; Tue, 20 Jul 2021 21:25:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BBA71155881
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 21:25:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA664866DF1
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 21:25:46 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-491-8ELmYovjOu2MWIpH5AN75A-1; Tue, 20 Jul 2021 17:25:44 -0400
X-MC-Unique: 8ELmYovjOu2MWIpH5AN75A-1
Received: by mail-ed1-f45.google.com with SMTP id dj21so30306132edb.0
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 14:25:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=nbIg4kyulMAuJLiZi87jq17f+uB9YB3xxjvMBTWbOI0=;
	b=S3jFQV6KMo7WTfKl2/SF9SUb3LY6+2GHiw6n1CiCxC0qhqphPjYTeqLcL72Zjjrfzq
	HCxVdTJxFIeSeNDp0grDzK3L4ZmdSNnrq3n6v6Fx9pYKsfYas0FWVSjuqrNmMFpLeFDj
	3Bvpu6EJl0ERedA2ZOlM4mqvMDPRFKw05Afdqx3mWFUUv0n+HTvShox5LJks2Ww+cmVv
	G7dehPRb0qlD+RIee6+AIf/qof3fVvarVj3Inj6vFP/5qQA6e+zmsMPejXJ6XgE6sqqL
	BhBiRjB7NBYJGBXgla5w8U+/pcdCM9aRBtFQ+3NrvjhbRWZB8QctkwCd2FoWnhm+aOzZ
	xw1w==
X-Gm-Message-State: AOAM532ZQrodjZ0ywZNJxD3lqVWB0cUft1/g4mdrvthJ7HoYAH61lAvp
	s17GOaHJ+/IbQbJaU/TAlkN+7q+ySNn5ZA==
X-Google-Smtp-Source: ABdhPJxw0QrnE8B6C2robPO/1cCwY2u1fMnfmDvPGilf21vFMJtu9AOYH0kZqyCbl5hZQsGDWwC21w==
X-Received: by 2002:a05:6402:22aa:: with SMTP id
	cx10mr43091228edb.0.1626816342496; 
	Tue, 20 Jul 2021 14:25:42 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id u9sm7305463eje.31.2021.07.20.14.25.40
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 20 Jul 2021 14:25:41 -0700 (PDT)
Subject: Re: changing the keymap in fluxbox on Slint
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c1411831-1b3f-9bfc-6e1e-156b648864ff@gmail.com>
	<2a956027-104d-5f6a-c3e7-08824785b7f5@slint.fr>
	<018401d77d86$43c1c120$cb454360$@gmail.com>
	<9cce1164-c4ad-140a-091d-d28d5459f45d@slint.fr>
	<29f4cf34-e24c-b336-1bca-f6fb5cab6eb1@gmail.com>
	<ded3c5a3-d3bc-b913-d4af-64f039483088@slint.fr>
Message-ID: <ad31af42-fbb1-a0ae-a0c2-caea99747595@gmail.com>
Date: Tue, 20 Jul 2021 23:25:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ded3c5a3-d3bc-b913-d4af-64f039483088@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRGlkaWVyLAoKClRoYW5rIHlvdSBzaXIsIGl0IGlzIG5vdyB3b3JraW5nIGFzIGV4cGVjdGVk
LgoKCk11Y2ggYXBwcmVjaWF0ZWQuCgoKV2FybSByZWdhcmRzLAoKCkJyYW5kdCBTdGVlbmthbXAK
CgpTZW50IHVzaW5nIFRodW5kZXJiaXJkIGZyb20gU2xpbnQKCk9uIDcvMjAvMjEgMTA6MjAgUE0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgQnJhbmR0LAo+
Cj4gbG9va2luZyBhdCAvZXRjL1gxMS94a2IvcnVsZXMvZXZkZXYubHN0IGxpbmUgIzI5NQo+IMKg
IGR2b3Jhay1swqDCoMKgwqDCoMKgwqAgdXM6IEVuZ2xpc2ggKGxlZnQgaGFuZGVkIER2b3JhaykK
PiBhcyB0aGlzIGxpbmUgaXMgYWZ0ZXIgbGluZSAjMjg2Ogo+ICEgdmFyaWFudAo+Cj4gSSBhc3N1
bWUgdGhhdCB5b3Ugc2hvdWxkIGhhdmUKPiDCoMKgwqDCoE9wdGlvbsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAiWGtiTGF5b3V0IiAidXMiCj4gwqDCoMKgwqBPcHRpb27CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgIlhrYlZhcmlhbnQiICJkdm9yYWstbCIKPiBpbnN0ZWFkLgo+
Cj4gUGxlYXNlIHRyeSB0aGUgYXR0YWNoZWQgbW9kaWZpZWQgZmlsZSBhbmQgdGVsbCB1cyBob3cg
dGhhdCBnb2VzLgo+Cj4gQ2hlZXJzLAo+IERpZGllcgo+IC0tIAo+IERpZGllciBTcGFpZXIKPgo+
IExlIDIwLzA3LzIwMjEgw6AgMjE6MjQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gYSDDqWNyaXTCoDoKPj4gSGkgRGlkaWVyLAo+Pgo+Pgo+PiBTZWUgdGhlIGF0dGFjaGVkIGZp
bGUuCj4+Cj4+Cj4+IFdhcm0gcmVnYXJkcywKPj4KPj4KPj4gQnJhbmR0IFN0ZWVua2FtcAo+Pgo+
Pgo+PiBTZW50IHVzaW5nIFRodW5kZXJiaXJkIGZyb20gU2xpbnQKPj4KPj4gT24gNy8yMC8yMSA2
OjQ3IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGkg
QnJhbmR0LAo+Pj4KPj4+IHBsZWFzZSBhdHRhY2ggdGhlIGZpbGUgL2V0Yy9YMTEveG9yZy5jb25m
LmQvMTAta2V5bWFwLmNvbmYgdG8geW91ciAKPj4+IG5leHQgcG9zdC4KPj4+Cj4+PiBDaGVlcnMs
Cj4+PiBEaWRpZXIKPj4+Cj4+PiBMZSAyMC8wNy8yMDIxIMOgIDE4OjQyLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+Pj4gSGkgRGlkaWVyLAo+Pj4+Cj4+
Pj4gU29ycnksIG5vIGx1Y2sgb24gZml4aW5nIHRoZSBrZXlib2FyZCBsYXlvdXQuIEkgdHJpZWQg
ZXZlcnl0aGluZyBJIAo+Pj4+IGNvdWxkIHRoaW5rIG9mIHRvIGRvLCBidXQgbm8gbHVjay4KPj4+
Pgo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+Pj4gRnJvbTogYmxpbnV4LWxpc3Qt
Ym91bmNlc0ByZWRoYXQuY29tIAo+Pj4+IDxibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+
IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgCj4+Pj4gZ2VuZXJhbCBkaXNjdXNzaW9uCj4+
Pj4gU2VudDogVHVlc2RheSwgMjAgSnVseSAyMDIxIDE4OjE1Cj4+Pj4gVG86IGJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4+PiBTdWJqZWN0OiBSZTogY2hhbmdpbmcgdGhlIGtleW1hcCBpbiBmbHV4
Ym94IG9uIFNsaW50Cj4+Pj4KPj4+PiBIaSBCcmFuZHQsCj4+Pj4KPj4+PiBJdCBjb3VsZCBiZSBh
biBpc3N1ZSB3aXRoIHRoZSBmaWxlIC91c3Ivc2hhcmUvc2FsaXh0b29scy9rZXltYXBzIAo+Pj4+
IGxlYWRpbmcgdG8gd3JpdGUgaW4gL2V0Yy9YMTEveG9yZy5jb25mLmQvMTAta2V5bWFwLmNvbmYK
Pj4+Pgo+Pj4+IE9wdGlvbsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICJYa2JMYXlvdXQiICJkdm9yYWsiCj4+Pj4gaW5zdGVhZCBvZjoKPj4+PiBPcHRp
b27CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiWGti
TGF5b3V0IiAiZHZvcmFrLWwiCj4+Pj4KPj4+PiB3aGVuIHJ1bm5pbmcga2V5Ym9hcmRzZXR1cCBv
ciBndGtrZXlib2FyZHNldHVwLgo+Pj4+Cj4+Pj4gUGxlYXNlIGVkaXQgdGhpcyAxMC1rZXltYXAu
Y29uZiBhcyByb290LCByZXBsYWNpbmcgZHZvcmFrIGJ5IAo+Pj4+IGR2b3Jhay1sLCByZXN0YXJ0
IGEgd2luZG93IG1hbmFnZXIuIERvZXMgaXQgbm93IHdvcms/Cj4+Pj4KPj4+PiBCZXN0IHJlZ2Fy
ZHMsCj4+Pj4gRGlkaWVyCj4+Pj4gLS0gCj4+Pj4gRGlkaWVyIFNwYWllcgo+Pj4+IFNsaW50IG1h
aW50YWluZXIKPj4+PiBkaWRpZXJhdHNsaW50ZG90ZnIKPj4+Pgo+Pj4+IExlIDIwLzA3LzIwMjEg
w6AgMTc6MjYsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+
Pj4+PiBIaSBhbGwsCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IEkgaW5zdGFsbGVkIFNsaW50IGluIGEgVk0s
IGJ5IGRlZmF1bHQgcnVubmluZyB0aGUgTWF0ZSBkZXNrdG9wLCB3aGljaAo+Pj4+PiBJIGNvdWxk
IGVhc2lseSBmaXgsIGJ1dCB3aGVuIEkgc3RhcnQgRmx1eEJveCwgbm90IHNvIG11Y2guCj4+Pj4+
Cj4+Pj4+Cj4+Pj4+IFRoZSBpc3N1ZSBpcyBhcyBmb2xsb3dzOiBJbiB0aGUgU2xpbnQgaW5zdGFs
bCBJIGNob3NlIER2b3JhayAtTAo+Pj4+PiAoTGVmdC1IYW5kZWQgRHZvcmFrKSBhcyBteSBrZXli
b2FyZC4gSG93ZXZlciwgd2hlbiBJIHJhbiAic3RhcnR4IiB0bwo+Pj4+PiBnZXQgaW4gdG8gbXkg
ZGVza3RvcCwgSSB3YXMgcHJlc2VudGVkIHdpdGggdGhlIER2b3JhayBrZXlib2FyZCAKPj4+Pj4g
bGF5b3V0LAo+Pj4+PiB3aGljaCwgYXMgYSBvbmUtaGFuZGVkIGxlZnR5LCBJIG9idmlvdXNseSBk
byBub3Qga25vdy4KPj4+Pj4KPj4+Pj4KPj4+Pj4gSSBmaXhlZCB0aGlzIHZlcnkgZWFzaWx5IGlu
IHRoZSBNYXRlIGRlc2t0b3AsIGJ1dCBoYXZlIG5vIGlkZWEgaG93IHRvCj4+Pj4+IGRvIHNvIGlu
IHRoZSBXaW5kb3cgTWFuYWdlcnMsIEZsdXhCb3gsIEJsYWNrQm94LCBldGMuCj4+Pj4+Cj4+Pj4+
Cj4+Pj4+IElmIGFueW9uZSBjYW4sIHBsZWFzZSBoZWxwIG1lIHdpdGggdGhpcyBpc3N1ZT8gSSB3
b3VsZCByZWFsbHkKPj4+Pj4gYXBwcmVjaWF0ZSBpdC4KPj4+Pj4KPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

