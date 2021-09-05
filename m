Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 696E44011FA
	for <lists+blinux-list@lfdr.de>; Mon,  6 Sep 2021 00:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630881599;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0xlxOSKK9fbx/JJiS3dAJFwitkmG1nVNFeLU+ZOYpfI=;
	b=KvJb+hdpCB+PpQ+4Fuj4/6YwNvwUN/3+Acr6ZbcGJ4SvShKIPhAtru3QfeyYMGLTM2KnVW
	cl5hKYdiR3+EE7u7ozsH2+YAdcUV1y342+TDrL2Btan/Fa/Byd3MpwQVFfx2XFdvUtDVT4
	y91V9ZEJTq4M0b++UA/N8dfa2Pb8H1s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-327-xZTo5BhEM926O2gn2cLl7g-1; Sun, 05 Sep 2021 18:39:57 -0400
X-MC-Unique: xZTo5BhEM926O2gn2cLl7g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 279335122;
	Sun,  5 Sep 2021 22:39:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F56A40AC;
	Sun,  5 Sep 2021 22:39:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4DBDA4EEA2;
	Sun,  5 Sep 2021 22:39:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 185MddDc025702 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Sep 2021 18:39:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A76BF1111C84; Sun,  5 Sep 2021 22:39:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A311A1111C81
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 22:39:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27DA6185A794
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 22:39:36 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-243-JW3GismTNKm39DyI1lLb6A-1; Sun, 05 Sep 2021 18:39:34 -0400
X-MC-Unique: JW3GismTNKm39DyI1lLb6A-1
Received: by mail-qk1-f174.google.com with SMTP id f22so5174478qkm.5
	for <blinux-list@redhat.com>; Sun, 05 Sep 2021 15:39:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=rvSSDMbz/A1YqXEYJDE+s2uirA6wGmG9x7xrycV85U4=;
	b=SQ6EePf5L57sh+t/xTppMr+j217UQya8/2FZdnhnsTpAErnIpftA/PnxVTT8t+zIsg
	GjA0GdED9dE0NN7edZW1rtTxb0nu71ldRnOGVr3iQt0cF6GKS11QdSKQCxiSgcyD0s3N
	IU1GpWDkLDwpuGx2WuKfj3HUAZ1KOEw7PXmv7OqoNm7Vv6rKdHV/D/iL/hNpbjggg3CY
	hz8LCiu0Le502+nY4l4j9yFFTlJF6fALFUwJaEj26SQ0VZPkjEJxVnabU4SFl/ANUsuK
	tpKlP0/Afa3N8IBiffq2Qtd1AuVCDsSLTblJn+rYu1HqQDCp0z+iLu9Tweo1KunpFEjz
	hx4A==
X-Gm-Message-State: AOAM530Il3DezYXw3wA5317qUdgG7F+kXC6BjsJweYSEspWgnimWj8yt
	gwIR3lI2q+LXbCKE+zLJoHza1ZqJg2jbSw==
X-Google-Smtp-Source: ABdhPJwTWw4p2E0eG08J3ghh8kFo+/4wj9Bw2/jW57bWEKpz5AO6mgntXF2600ra2p+BoQFC9yX6IQ==
X-Received: by 2002:a37:66cb:: with SMTP id a194mr8404105qkc.345.1630881573906;
	Sun, 05 Sep 2021 15:39:33 -0700 (PDT)
Received: from probook.example.slint ([2601:192:4c80:1420::235b])
	by smtp.gmail.com with ESMTPSA id
	j18sm4970115qke.75.2021.09.05.15.39.33 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Sep 2021 15:39:33 -0700 (PDT)
Subject: Re: No GNOME Terminal on Jenux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e532d780-aba9-1a5b-64f6-880ade71e38b@gmail.com>
	<18C382B6-0C05-4660-8ED0-29BCA802BACF@gmail.com>
	<83cfe362-91fe-b36c-cbc3-f4055cfb888e@gmail.com>
	<alpine.NEB.2.23.451.2109051343190.23445@panix1.panix.com>
	<CAGz84JJ1Aww6=rZxMD3fvZijuZvKjo6LVoBoHwo7CPXeRmPu1w@mail.gmail.com>
	<alpine.NEB.2.23.451.2109051617230.17810@panix1.panix.com>
Message-ID: <17f9562c-8439-1e5a-08d7-252fe86f1ed6@gmail.com>
Date: Sun, 5 Sep 2021 18:39:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2109051617230.17810@panix1.panix.com>
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

SGksCgoKVGhhbmtzIGZvciBhbGwgdGhpcyBpbmZvcm1hdGlvbiEKCgpKZW51eCBkb2Vzbid0IHVz
ZSBnZG0gYXQgYWxsLiB0aGV5IHJ1biBzdGFydHggaW4gdGhlIHVzZXIncyAnLnByb2ZpbGUnLCAK
YW5kIHNldCB0aGUgc2Vzc2lvbiBpbiB+Ly54aW5pdHJjJywgSSB0aGluay7CoCBJIHRoaW5rIHRo
ZSBnbm9tZS10ZXJtaW5hbCAKcHJvZ3JhbSBpcyBvbiB0aGUgc3lzdGVtLCBhcyBteSBhdHRlbXB0
IHRvIHJ1biBpdCwgZnJvbSB0aGUgcnVuIApkaWFsb2d1ZSwgZG9lc24ndCBzYXkgImNvbW1hbmQg
bm90IGZvdW5kIi4KCgoKQ2hlZXJzLAoKCgpEYXZlwqAgSC4KCgoKCk9uIDkvNS8yMSA0OjIxIFBN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IE1heWJlIG5vdCwg
aXQgY291bGQgYmUgSmVudXggaW5zdGFsbCBzY3JpcHQgZGlkbid0IGluY2x1ZGUgZ25vbWUtdGVy
bWluYWwKPiBpbiBpdHMgcGFja2FnZXMgZG93bmxvYWQuICBJIHdhc24ndCBhYmxlIHRvIGZpbmQg
aXQgb24gdGhlIHN5c3RlbS4gIEl0Cj4gY291bGQgYmUgZ25vbWUgcmVuYW1lZCB0aGF0IHBhY2th
Z2UgdG9vLiAgTWF5YmUgc3lzdGVtY3RsIGRpc2FibGUKPiBnZG0uc2VydmljZSBhbmQgb24gcmVi
b290IHlvdSBnbyBpbnRvIGZlbnJpciBmb3IgdGhlIHRlcm1pbmFsIHdvcmsgb24gYQo+IHJlYWwg
Y29uc29sZS4gIElmIEplbnV4IGluY2x1ZGVkIGEgc3RhcnR4IHNjcmlwdCB0aGF0IGNhbiBmaXJz
dCBlbmFibGUgZ2RtCj4gdGhlbiBzdGFydCBnZG0gdXAgdGhhdCBtaWdodCB3b3JrLiAgQWxzbyBz
ZWUgd2hhdCBoYXBwZW5zIHdoZW4geW91IHRyeQo+IGRvd25sb2FkaW5nIGdub21lLXRlcm1pbmFs
LiAgSXQgY291bGQgYmUgaXQncyBhdmFpbGFibGUgZm9yIGluc3RhbGxhdGlvbgo+IGFmdGVyIGFs
bC4KPgo+Cj4gT24gU3VuLCA1IFNlcCAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Cj4+IEknZCBjb25zaWRlciB0aGF0IGlmIEkgaGFkIGEgcnVubmluZyB0
ZXJtaW5hbDsgdGhpcyBzZWVtcyBub3QgdG8gYmUgdGhlIGNhc2UKPj4gb3IsIGlzIHRoYXQgJy1l
JyBvcHRpb24gdG8gYmUgdXNlZCBpbiBhIGNvbnNvbGU/Cj4+Cj4+Cj4+IFRoYW5rcywKPj4KPj4K
Pj4gRGF2ZQo+Pgo+Pgo+Pgo+Pgo+PiBPbiBTdW4sIFNlcCA1LCAyMDIxIGF0IDE6NDQgUE0gTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4+IGJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgo+Pgo+Pj4gSGF2ZSB5b3UgdHJpZWQgZmVucmlyIC1lIHlldD8KPj4+Cj4+Pgo+
Pj4gT24gU3VuLCA1IFNlcCAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+Pj4KPj4+PiBUaGFuayB5b3UhICBNdXN0IGJlIHNvbWV0aGluZyBpbiB0aGUgd2F5
IEFyY2ggYnVpbHQgR05PTUUuICBJdCdzIHByZXR0eQo+Pj4gaGFyZAo+Pj4+IHRvIG1haW50YWlu
IGEgc3lzdGVtIHdpdGhvdXQgYSB3b3JraW5nIHRlcm1pbmFsLgo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+
IENoZWVycywKPj4+Pgo+Pj4+Cj4+Pj4KPj4+PiBEYXZlCj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4KPj4+
PiBTZW50IGZyb20gU2xpbnQgR05VL0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJv
b2suaHRtbCBmb3IgaW5mbwo+Pj4+Cj4+Pj4gT24gOS81LzIxIDE6MjcgUE0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+IEkgdGhpbmsgdGhpcyBpcyBhIGdl
bmVyYWwgcHJvYjtlbSBpbiBhcmNoIGFzIEkgaGF2ZSBydW4gaW50byB0aGUgc2FtZQo+Pj4+PiBw
cm9ibGVtIGFuZCBoYXZlIG5vdCBmb3VuZCBhIHdvcmsgYXJvdW5kIGZvciB0aGlzLiAgVGhhbmtz
Lgo+Pj4+Pgo+Pj4+PiBNYXR0aGV3Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+PiBPbiBTZXAgNSwg
MjAyMSwgYXQgMTI6MzMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPj4+
Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBHcmVldGlu
Z3MhCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEkgaW5zdGFsbGVkIEplbnV4IHdpdGggR05PTUUsIGFu
ZCBmaW5kIHRoYXQgdGhlIHJlc3VsdGluZyBzeXN0ZW0gaGFzCj4+PiBubwo+Pj4+Pj4gdXNhYmxl
IEduT01FIHRlcm1pbmFsLiAgV2hldGhlciBJIHRyeSBzdGFydGluZyBpdCB3aXRoLAo+Pj4gImdu
b21lLXRlcm1pbmFsIiwKPj4+Pj4+IGluIHRoZSAncnVuJyBkaWFsb2d1ZSwgb3Igc2VsZWN0IGl0
IGZyb20gdGhlIG92ZXJ2aWV3LCBub3RoaW5nCj4+PiBoYXBwZW5zLiAgSQo+Pj4+Pj4gYWxzbyB0
cmllZCBnZXR0aW5nIGEgdGFsa2luZyBjb25zb2xlIG9uIHR0eTIsIGFuZCBmaW5kIHRoYXQgc3Vj
aAo+Pj4gY29uc29sZXMKPj4+Pj4+IGRvbid0IHNwZWFrLiAgSG93IGNhbiBJIGdldCBhIHRhbGtp
bmcgdGVybWluYWwgb3IgY29uc29sZSBvbiB0aGlzCj4+PiBzeXN0ZW0sCj4+Pj4+PiBiZXNpZGVz
IHJlaW5zdGFsbGluZyBhbmQgY2hvb3NpbmcgTWF0ZT8KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4KPj4+
Pj4+IFRoYW5rcywKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IERhdmUKPj4+Pj4+Cj4+Pj4+
Pgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiAtLQo+Pj4+Pj4gU2VudCBmcm9tIFNsaW50IEdOVS9MaW51
eC4gIGh0dHBzOi8vc2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwgZm9yCj4+PiBpbmZvCj4+Pj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPj4KPj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

