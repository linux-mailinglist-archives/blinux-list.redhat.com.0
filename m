Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C390D3FAD96
	for <lists+blinux-list@lfdr.de>; Sun, 29 Aug 2021 20:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630260034;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SHVhIfJkPzkJy8aJxm/48tuU4AE8xVkzWgMSSFCQfV4=;
	b=MXdhjDQNUFHhNRpJfSu6lorVBAIPy4HW/ZBpmpINg7QDzbmWvmVRSegBx/aJfMU+G9ccvR
	mzhUglunAiCSfvmgP3oSMYaZdiOR89JrpGadARirFV/WLD84iIUmlCYSLjSOhd3FCZfzF9
	ue275onLGAj0+QilBxRXmr8o5GeXu9k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-LCWDQs73NZ6ty8ulRZEVsg-1; Sun, 29 Aug 2021 14:00:32 -0400
X-MC-Unique: LCWDQs73NZ6ty8ulRZEVsg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4458A1008064;
	Sun, 29 Aug 2021 18:00:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB97860CA0;
	Sun, 29 Aug 2021 18:00:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 87F1E181A0F2;
	Sun, 29 Aug 2021 18:00:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17TI0216031529 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 29 Aug 2021 14:00:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7A583100332F; Sun, 29 Aug 2021 18:00:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 751A91006109
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 17:59:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B0424800883
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 17:59:58 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-344-hVsHOw8pOgG44MH5RqGYdg-1; Sun, 29 Aug 2021 13:59:56 -0400
X-MC-Unique: hVsHOw8pOgG44MH5RqGYdg-1
Received: by mail-oi1-f181.google.com with SMTP id p2so17350607oif.1
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 10:59:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Um/rX+8dh6zMOhDujhsPf08uxNIuPIjUkiB7AkHOJHc=;
	b=r3DcruhBOyyzM5N41Xp8b47rKvzjbtx5G4g0hfCYABMUt53yTDpHuh0saFwS5OcISE
	l7dalwRhsUsK5FSj8z0Znyt5Nmnt4E31nZISyG6TCf6bJRQKa5F6ajLsCXNNFkZnA/vs
	712aowpG00ElooeC9yEssKWD7Odb5JWJUDWrOrStEloHDpAemyRnP2xyXlzBVC8zDDLq
	9ILvJ3iY9VBBWekPwGVvyGtMZQV3q6BZop/q43X29SYlHKeZ8rLZT+wUt18g8n0PqWGe
	03ZyBwH0dlOvg5/uKKKKlJnl8TrIr/NqsNgcL1XoGJUnBVItV9z82nuoSGvCgHHypP61
	iVpQ==
X-Gm-Message-State: AOAM533OlHCuFF0IDjDeBk6ahSKQbIsHtdHWApCZzBM6WRhMLn3ijA1M
	KIq008et0b2DQipFPg1EWPo54vVoqjmfsQ==
X-Google-Smtp-Source: ABdhPJxjpuCI2gyeFmG0s6YWr5wzmx2kwbhXJqeF49Lpf+tYSGk/yOL8/5Qv54tzY950xpj3xxzyxQ==
X-Received: by 2002:a05:6808:f04:: with SMTP id
	m4mr13449000oiw.86.1630259995113; 
	Sun, 29 Aug 2021 10:59:55 -0700 (PDT)
Received: from [172.16.170.23] (76-252-147-143.lightspeed.clmboh.sbcglobal.net.
	[76.252.147.143])
	by smtp.gmail.com with ESMTPSA id a4sm1108439otv.49.2021.08.29.10.59.54
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 29 Aug 2021 10:59:54 -0700 (PDT)
Subject: Re: Found this on youtube
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
	<efe42a63-c45d-faf0-fa47-289a51049768@gmail.com>
	<alpine.NEB.2.23.451.2108290909030.12570@panix1.panix.com>
	<YSuTJ9eHEzFKdmn9@brandt-slint.localhost>
Message-ID: <a3199a39-e7c7-17d6-f5d3-fc8bd1ae13b9@gmail.com>
Date: Sun, 29 Aug 2021 13:59:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YSuTJ9eHEzFKdmn9@brandt-slint.localhost>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKWWVzdGVyZGF5IEkgZGlkIGEgYmxpbmQgYXJjaCBpbnN0YWxsIHdpdGggbm8gcHJvYmxl
bS7CoCBPbmUgb2YgdGhlIG9wc2lvbiAKaXMgdG8gdXBkYXRlIHRoZSBrZXkgcmluZy7CoCBZb3Ug
bWF5IHdhbnQgdG8gdHJ5IHRoaXMgZmlyc3QgYmVmb3JlIAphbnl0aGluZyBlbHNlLgoKCk1hdHRo
ZXcKCgoKT24gOC8yOS8yMSAxMDowMSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiBIaSwKPgo+IGV2ZXJ5IHRpbWUgSSd2ZSB0cmllZCBpbnN0YWxsaW5nIEpl
bnV4IHRoZSBpbnN0YWxsIGZhaWxlZC4gV2h5PyBJIGhhdmUgbm8gaWRlYS4gSSBrbm93IHRoZXJl
IGFyZSBtYW55IHBlb3BsZSB2ZXJyeSBoYXBwZWx5IHVzaW5nIEplbnV4LCB1bmZvcnR1bmF0bHks
IEkgYW0gbm90IG9uZSBvZiB0aGVtLgo+Cj4gV2FybSByZWdhcmRzLAo+Cj4gQnJhbmR0IFN0ZWVu
a2FtcAo+Cj4gU2VudCB1c2luZyBNdXR0IGZyb20gdGhlIFNsaW50IGxhcHRvcAo+IE9uIFN1biwg
QXVnIDI5LCAyMDIxIGF0IDA5OjEyOjI5QU0gLTA0MDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+IEplbnV4IGRvZXMgZ2V0IGFuIGFjY2Vzc2libGUgc3lzdGVt
IHVwIHdpdGggZWl0aGVyIGFuZHJvaWQgb3Igc2V2ZXJhbAo+PiBmbGF2b3JzIG9mIGFyY2hsaW51
eC4gIE5vdCBhbGwgZmxhdm9ycyBvZiBhcmNobGludXggYXJlIGFjY2Vzc2libGUgdGhhdAo+PiBj
YW4gYmUgaW5zdGFsbGVkIHdpdGggSmVudXggYnV0IG1vc3QgYXJlLiAgSmVudXggaGFzIGNvbnRp
bnVpbmcgc3VwcG9ydCBhcwo+PiBzaG93biBieSB0aGUgZGlmZmVyZW50IGRhdGVzIGVtYmVkZGVk
IGluIHRoZSBuYW1lcyBvZiB0aGUgaXNvJ3MgYW5kIHNoYTUxMgo+PiBmaWxlcyBhdmFpbGFibGUg
b24gaXRzIHNpdGUuCj4+Cj4+Cj4+IE9uIFN1biwgMjkgQXVnIDIwMjEsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Cj4+PiBIaSBhbGwsCj4+Pgo+Pj4KPj4+IFRo
ZSBsYXN0IEkgY2hlY2tlZCwgdGhlIEJsaW5kQXJjaCBJU08gaXMgcmF0aGVyIG9sZC4gSSBkaWQg
YW4gaW5zdGFsbCwgYnV0Cj4+PiB0aGVyZSB3ZXJlIHNvIG1hbnkgdGhpbmdzIHdyb25nIHdpdGgg
dGhlIGluc3RhbGwgSSBrZXB0IGl0IGZvciBsZXNzIHRoYW4gYW4KPj4+IGhvdXIuIEl0IHdvdWxk
J3ZlIHRha2VuIG1lIGRheXMgdG8gZml4IGl0IGFsbC4KPj4+Cj4+Pgo+Pj4gSSBhbSBhY3R1YWxs
eSBjb25zaWRkZXJpbmcgd3JpdGluZyBhbiBpbnN0YWxsIFNjcmlwdCBpbiB0aGUgbGluZSBvZiBh
IE5peE9zCj4+PiBjb25maWd1cmF0aW9uIGZvciBteSBvd24gcGVyc29uYWwgdXNlLCB0aHVzLCBu
byBjaG9pY2VzLCBhbGwgYmFrZWQgaW4gdG8gdGhlCj4+PiBzY3JpcHQuIEl0IHdvdWxkIHByb2Jh
Ymx5IHRha2UgbWUgc29tZSB0aW1lLCBidXQgd2hhdCBjYW4geW91IGRvPwo+Pj4KPj4+Cj4+PiBJ
IHdvdWxkIHJhdGhlciBkbyB0aGF0IHRoYW4gc2NyZXcgYXJvdW5kIHdpdGggImluc3RhbGwgc2Ny
aXB0cyIuIE1vc3Qgb2YgdGhlCj4+PiBkYXJuIHRoaW5ncyBpcyBidWdneSBhcyBhbGwgZ2V0IG91
dCwgb3IgZG9lc24ndCBpbmNsdWRlIHRoZSBhY2Nlc3NpYmlsaXR5Cj4+PiBzdHVmZiBieSBkZWZh
dWx0Lgo+Pj4KPj4+IFdhcm0gcmVnYXJkcywKPj4+Cj4+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Pgo+
Pj4gU2VudCB1c2luZyBUaHVuZGVyYmlyZCBmcm9tIHRoZSBTbGludCBMYXB0b3AKPj4+Cj4+PiBP
biAyMDIxLzA4LzI4IDIzOjA1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+Pj4+IEhpIGFsbCwKPj4+Pgo+Pj4+IEp1c3QgZm91bmQgdGhpcyBvbiBZb3V0dWJlIGFu
ZCB3b25kZXJlZCBpZiBhbnlvbmUgaGhhcyB0cmllZCBpdC4gIFRoaXMgaXMgYQo+Pj4+IGJsaW5k
IGFyY2ggaW5zdGFsbCBkZW1vIG9uIGhvdyBpdCB3b3Jrcy4KPj4+Pgo+Pj4+IGh0dHBzOi8vd3d3
LnlvdXR1YmUuY29tL3dhdGNoP3Y9NzJnLTJmYlAwNHcKPj4+PiBNYXR0aGV3Cj4+Pj4KPj4+Pgo+
Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Pgo+Pj4KPj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

