Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A618E3DC7AC
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 20:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627756331;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CU1YcIeS+PjnttQWysmf8wjyWbwvgUvV2HqiJlP2vaU=;
	b=igYcStRrvRAjbA7TBSy/45QVXKx4XszXnu44gHR53FrPWdNghjBnn2NPjDW0L957BvuQR7
	NZWrEAbbyv+ZHoClL8+0+t4sgPTo/LGbIVp/4HyZ2SiL5paf1DUQ+lRv2Wj1WFJNhA9qji
	vMXbPOqzhrbYy6Jv3orA2xkuGOjSkQs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-586-5eC3B3f0P8KQqJwvJQ1Qew-1; Sat, 31 Jul 2021 14:31:58 -0400
X-MC-Unique: 5eC3B3f0P8KQqJwvJQ1Qew-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB5341853024;
	Sat, 31 Jul 2021 18:31:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D4FA60C05;
	Sat, 31 Jul 2021 18:31:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 11B764BB7C;
	Sat, 31 Jul 2021 18:31:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16VIVlQa016425 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 14:31:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BB06F9C05C; Sat, 31 Jul 2021 18:31:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B411A9C05B
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 18:31:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43E5218812C6
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 18:31:45 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
	[209.85.214.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-328-uyyuIHSiNxG6JR3Vl7gZhA-1; Sat, 31 Jul 2021 14:31:42 -0400
X-MC-Unique: uyyuIHSiNxG6JR3Vl7gZhA-1
Received: by mail-pl1-f177.google.com with SMTP id d1so14996860pll.1
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 11:31:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=hg+HSQ3VAP+S9W01EBMBdqC6S2Rggtus8VxXKznn7OA=;
	b=m9Rgg4LP2EQBX4LoDi6i0JOAkTDvWDqb3PwAmOSYRNRg9UToUaaNRX6JMf6ZbCpmxd
	ayU9v8F482JmROO14jUEAqvA7EF/Vu071TO3pxAl3nGHwFTUGrX4FhMGlq1wbu8K4/LI
	uGHoC84koyXwlk+BMTFG5IRyWxG6jSJV9VCIKpnMjk4qP5J7f7XMWYjjxKLvd+uqkGNk
	v2pp+bw2FK0loKItrA+fnIi5oWuw945tVhwJA+vQRYjFsN1QAcyJl5BhDEQ3wuVWpxEQ
	cjuH4VilH507DgFYXIAByHVOhUHCCaTWIdhbx4SA9Uq6xsAZO097UKvOdONnY+oO2H6E
	expA==
X-Gm-Message-State: AOAM530i+GW4JqQDPtRfNfTBwrimWYByov1RDOlUbKzhgmsGvLPBo6ni
	dGsxWYmJRLdtEEhCXXIxn/htPAcWnLlzhRyxQUhuLRXK
X-Google-Smtp-Source: ABdhPJysLMT4mY2tUepojn8aQw98bi1oktnh0/ZBudLpg+EJ2Tnly4JMFXGnidUSA31cNCItL8ofGrnkpQUtVVsn2b4=
X-Received: by 2002:a05:6a00:1390:b029:32a:e2a2:74de with SMTP id
	t16-20020a056a001390b029032ae2a274demr8862458pfg.6.1627756301151;
	Sat, 31 Jul 2021 11:31:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:cca8:0:0:0:0 with HTTP; Sat, 31 Jul 2021 11:31:40
	-0700 (PDT)
In-Reply-To: <d51f3b64-b207-d46a-80fd-0c25dd18699f@protonmail.com>
References: <017601d78622$98193d80$c84bb880$@kellford.com>
	<d51f3b64-b207-d46a-80fd-0c25dd18699f@protonmail.com>
Date: Sat, 31 Jul 2021 11:31:40 -0700
Message-ID: <CAM+Q2c6xO87oSJ76K9wJEiiiHGBdS4x3eKPiH11MJfYreh0gVg@mail.gmail.com>
Subject: Re: Setup of Raspberry PI
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
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16VIVlQa016425
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBpbnN0YWxsZWQgVWJ1bnR1IHNlcnZlciB1c2luZyB0aGUgUmFzcGJlcnJ5IFBpIGltYWdlciwg
dGhlbiBzaW1wbHkKd29ya2VkIHcvaXQgdmlhIFNTSC4KCk9uIDcvMzEvMjEsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+
IEhlbGxvLAo+Cj4gSSBkb24ndCBrbm93IGFib3V0IHRoZSBvbGRlciB2ZXJzaW9ucyBvZiBQaSwg
YnV0IEkndmUgc2V0IHVwIDRCCj4gc3VjY2Vzc2Z1bGx5IHdpdGhvdXQgYW55IHNpZ2h0ZWQgYXNz
aXN0YW5jZSB1c2luZyB0aGUgb2ZmaWNpYWwgUmFzcGJlcnJ5Cj4gT1MgaW1hZ2UuCj4KPgo+IFBy
YW5hdiBMYXYgd3JvdGUgYSB2ZXJ5IGdvb2QgdHV0b3JpYWwgb24gaGlzIGJsb2c6Cj4KPiBodHRw
czovL3RlY2hlc290ZXJpY2EuY29tL2dldHRpbmctdGhlLW9yY2Etc2NyZWVuLXJlYWRlci13b3Jr
aW5nLW9uLWEtcmFzcGJlcnJ5LXBpLTQtd2l0aC1yYXNwYmlhbi1idXN0ZXItYW5kLXRoZS1tYXRl
LWRlc2t0b3AvCj4KPgo+IEkgaGF2ZSB0d2Vha2VkIGl0IGEgYml0IGZvciBteSBwdXJwb3Nlcywg
aW5jbHVkaW5nIGNvbmZpZ3VyYXRpb24gb2YgdGhlCj4gbGFuZ3VhZ2UgYW5kIHdpZmkgb3ZlciBT
U0gsIHVzaW5nIHRoZSBkZWZhdWx0IGRlc2t0b3AgZW52aXJvbm1lbnQgKHdoaWNoCj4gaXMgYSBm
b3JrIG9mIExYRGUpIGFuZCBpbnN0YWxsaW5nIE9yY2EgZGlyZWN0bHkgZnJvbSB0aGUgcmVwb3Np
dG9yeSwgYXMKPiB0aGUgZnJvbSBzb3VyY2UgaW5zdGFsbGF0aW9uIGRpZCBub3Qgd29yayB2ZXJ5
IHdlbGwgLSBJIHdhcyBub3QgYWJsZSB0bwo+IGNvbmZpcm0gdGhlIGNvbmZpZ3VyYXRpb24gcmVx
dWVzdGVkIG9uIHRoZSBmaXJzdCBydW4uCj4KPiBUaG91Z2ggSSBzdXBwb3NlIHRoaXMgY2FuIGJl
IHdvcmtlZCBhcm91bmQgc2ltcGx5IGJ5IGluc3RhbGxpbmcKPiBzb3VyY2UtY29tcGlsZWQgT3Jj
YSBvdmVyIGEgcmVwb3NpdG9yeSBpbnN0YWxsYXRpb24sIEkgdXNlIGl0IHRoaXMgd2F5Cj4gb24g
bXkgbGFwdG9wIGFuZCBpdCB3b3JrcyBxdWl0ZSB3ZWxsICh0aGUgcmVwb3NpdG9yeSB2ZXJzaW9u
IGlzIG5vdAo+IHVwZGF0ZWQgYW55d2hlcmUgbmVhciBsb3cgZnJlcXVlbnRseSwgc28gSSdtIG5v
dCB3b3JyaWVkIGFib3V0IHRoaW5ncwo+IGdldHRpbmcgbWVzc2VkLiA6KSApCj4KPgo+IEJlc3Qg
cmVnYXJkcwo+Cj4KPiBSYXN0aXNsYXYKPgo+Cj4gRMWIYSAzMS4gNy4gMjAyMSBvIDE3OjQxIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4+IEhpLAo+Pgo+
Pgo+Pgo+PiBNeSBSYXNwYmVycnkgUEkgZGV2aWNlIGxvc3QgcG93ZXIgZHVyaW5nIGFuIHVwZ3Jh
ZGUgc28gd2Fzbid0IGJvb3RpbmcgYW55Cj4+IGxvbmdlci4gIEkgcmVmbGFzaGVkIHRoZSBTRCBj
YXJkIHRvIGp1c3QgZG8gYSBjbGVhbiBpbnN0YWxsLiAgQnV0IEkgYW0gbm93Cj4+IGN1cmlvdXMg
aWYgdGhlcmUgaXMgYSB3YXkgdG8gZ2V0IE9SQ0Egb3Igb3RoZXIgc3BlZWNoIHRvIGRvIHNldHVw
Pwo+Pgo+Pgo+Pgo+PiBUaGUgZmlyc3QgdGltZSBJIGRpZCB0aGlzLCBJIGhhZCBzaWdodGVkIGFz
c2lzdGFuY2UgYmVjYXVzZSBJIGFuZCBhCj4+IGJyb3RoZXIKPj4gd2VyZSBzZXR0aW5nIHVwIGZv
dXIgb2YgdGhlc2UgYXQgdGhlIHNhbWUgdGltZQo+Pgo+Pgo+Pgo+PiBJJ3ZlIHRyaWVkIGEgZmV3
IHRoaW5ncyB0byB0cnkgYW5kIGdldCB0aGluZ3MgdGFsa2luZyB3aXRoIG5vIGx1Y2suICBJJ20K
Pj4gdXNpbmcgdGhlIGRlZmF1bHQgUmFzcGJlcnJ5IFBJIGltYWdlIGZyb20gdGhlaXIgc2l0ZS4K
Pj4KPj4KPj4KPj4gS2VsbHkKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0CgoKLS0gClN1YnNjcmliZSB0byBhIFdvcmRQcmVzcyBmb3IgTmV3YmllcyBNYWls
aW5nIExpc3QgYnkgc2VuZGluZyBhIG1lc3NhZ2UgdG86CndwNG5ld2JzLXJlcXVlc3RAZnJlZWxp
c3RzLm9yZyB3aXRoICdzdWJzY3JpYmUnIGluIHRoZSBTdWJqZWN0IGZpZWxkIE9SIGJ5CnZpc2l0
aW5nIHRoZSBsaXN0IHBhZ2UgYXQgaHR0cDovL3d3dy5mcmVlbGlzdHMub3JnL2xpc3Qvd3A0bmV3
YnMKJiBjaGVjayBvdXQgbXkgc2l0ZXMgYXQgd3d3LmJyaWdodHN0YXJzd2ViLmNvbSAmIHd3dy5t
eXNpdGVzYmVlbmhhY2tlZC5jb20KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

