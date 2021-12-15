Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 365AA474EDD
	for <lists+blinux-list@lfdr.de>; Wed, 15 Dec 2021 01:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639526823;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dYduldxQ95R4GDfYJypN8Ou6XAktgIWC5YpESn6YdXk=;
	b=fmsdMxjrwDJqwgkmqYRvZHsdpd+oQjEjwWgQEP7lni+1pEjjApEP+ag5HAy3t+H0bwuEqr
	8x75ejb/6wtk52jjN+XEOhgUHm4RMaiPrUcDEbrvpVo6ptQW7jS9Xw4JbFARsqS1VdVHaj
	zjk3Fie51tRLcZ/YuqFTG+OTFooflUo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-435-viJ79jcDO0O1Ru2HIwN6yA-1; Tue, 14 Dec 2021 19:06:59 -0500
X-MC-Unique: viJ79jcDO0O1Ru2HIwN6yA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2340801962;
	Wed, 15 Dec 2021 00:06:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 622F526E4C;
	Wed, 15 Dec 2021 00:06:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DCBD94BB7C;
	Wed, 15 Dec 2021 00:06:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BF06nxw003364 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 19:06:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B9930400F3FD; Wed, 15 Dec 2021 00:06:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B543B40149AA
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 00:06:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 988ED3806659
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 00:06:49 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-266-0eKBITl-NwW72CesOntLww-1; Tue, 14 Dec 2021 19:06:48 -0500
X-MC-Unique: 0eKBITl-NwW72CesOntLww-1
Received: by mail-wr1-f51.google.com with SMTP id a18so35183840wrn.6
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 16:06:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=RAioBvW7yoo93nasoub+fTxSKHjviZK/h/p7P807nG8=;
	b=L31ySlO8msBTgM8kgJzMskKabObjY73o8GHqZwbL3aCU6Z25VqhldfsWljhrdesrnj
	BzX256MV/n+MPQ5mPYCMm1IOpFHG0DimKMNR+TIBrPf2KSpWPFG1tfFD75l+FUBUCFt4
	0idGjJV2kEijgabk8ak8JOva2y47B9+q30qdsVqQRNIAgY5WeIyg7F9J4tpYDqKJU1JU
	HEKx0N9FQBuVmuGmW6lAkUtA999U83NIdr14SY277SeMbC7t3PG+757JH1rag0O1fGkW
	VDYu53vV8y+t53QSt9Q1sBJs54LYVgLkLlWpjpK6UzPHGsJgBMAX9gD/DQ6djfZK/CvR
	CvEg==
X-Gm-Message-State: AOAM530wd429sWJ7xGLNAA+1CKwgJjP72kKKrLcnD+CUILMUbSBgXr2k
	63GV1qkjZEw371Bmk/PfeIp/8xTNHBKLoA==
X-Google-Smtp-Source: ABdhPJzEgHb7HGGhGLx/f2tUMycqTQ0NhmuVGDqubxovbXqQjH0vtJtHNQNcwQWZA2HgaUJ7x9Mxng==
X-Received: by 2002:a5d:64ed:: with SMTP id g13mr1985022wri.439.1639526806378; 
	Tue, 14 Dec 2021 16:06:46 -0800 (PST)
Received: from [10.0.2.15] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id m21sm343134wrb.2.2021.12.14.16.06.45
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 16:06:45 -0800 (PST)
Subject: Re: Attempting a Jenux install, again.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
	<5b241b8a-802e-e3d8-d86b-a655dd0fea72@gmail.com>
	<e4240782-5385-9ba8-d741-5469440faa16@gmail.com>
Message-ID: <06c10c61-7e1a-d426-0fe1-afc92754e0e8@gmail.com>
Date: Wed, 15 Dec 2021 00:06:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.9.1
MIME-Version: 1.0
In-Reply-To: <e4240782-5385-9ba8-d741-5469440faa16@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

T25jZSB5b3UgYm9vdCB0aGUgSVNPIHdpdGggc3BlZWNoICh3aGljaCBpcyBkb3duIG9uY2Ugb24g
dGhlIGJvb3QgbWVudSwgCnNvIGp1c3QgZG93biBhbmQgZW50ZXIgdGhlbiB3YWl0KSwgYW5kIGl0
IGxvZ3MgeW91IGluIGFuZCB5b3UgZ2V0IHRoZSAKcm9vdEBhcmNoaXNvIHByb21wdCBqdXN0IHR5
cGUgYXJjaGluc3RhbGwgYW5kIGl0J2xsIGRvIGEgY29ubmVjdGlvbiB0ZXN0IAp0aGVuIGNvbWUg
dXAgd2l0aCB0aGUgZ3VpZGVkIGluc3RhbGxlci4KCjk5JSBvZiBpdCBpcyBpbnR1aXRpdmUuIEkn
dmUgbm90IGdvdCBhcm91bmQgdG8gdGVzdGluZyB0aGUgaW5zdGFsbCAKb3B0aW9uIGZvciBkZXNr
dG9wcy4gSSBwZXJzb25hbGx5IGdvIHdpdGggYSBiYXNlIGluc3RhbMKgIGFuZCBjdXN0b21pemUg
Cm15IHN5c3RlbSBhcyBuZWVkZWQsIGJ1dCBZTU1WIG9uIHRoYXQgb25lLiBUaGUgb25seSBiaXQg
dGhhdCB0cmlwcGVkIG1lIAp1cCB3YXMgdGhlIHJlZ2lvbiBzZWxlY3Rpb24gKHNlY29uZCBzdGVw
KSBhbmQgdGhlIGRpc2sgc2VsZWN0aW9uIHNpbmNlIAp0aGF0IGNoYW5nZWQgdG8gd2hlcmUgeW91
IHNlbGVjdCB5b3VyIGRpc2ssIHRoZW4gZG9uJ3Qgc2VsZWN0IGFueXRoaW5nIAp0byBjb250aW51
ZS4gSXQgd2Fsa3MgeW91IHRocm91Z2ggdGhlIHN0ZXBzIG9uZSBhdCBhIHRpbWUsIGFuZCBpZiB5
b3UgCmtub3cgaG93IHRvIGluc3RhbGwgQXJjaCBhY2Nlc3NpYmx5LCB0aGUgZXh0cmEgcGFja2Fn
ZXMgc3RlcCBpcyB0aGUgc2FtZSAKYXMgcGFjc3RyYXAuCgpGZXcgdGhpbmdzIHRvIG5vdGU6Cgox
LiBJdCBhdXRvIGVuYWJsZXMgZXNwZWFrdXAgaWYgaXQncyBpbnN0YWxsZWQgKEkgdXN1YWxseSBp
bnN0YWxsIGl0IG91dCAKb2YgaGFiaXQpCgoyLiBJJ20gbm90IHN1cmUgb2YgdGhlIGtleXMgdG8g
c2h1dCBlc3BlYWt1cCBvZmYgaG93ZXZlci4uLgoKQW5kIHRoZSBiaWcsIGJpZyBvbmUuIFRoZSBs
YXN0IEkgY2hlY2tlZCwgTm92ZW1iZXIuIEl0IG9ubHkgd29ya2Qgb24gClVFRkkgbWFjaGluZXMg
L2J1dC8gdGhhdCBtaWdodCBoYXZlIGJlZW4gY2hhbmdlZC4gSSBob25lc3RseSBkb24ndCBrbm93
IAppZiBpdCdzIHdvcmtpbmcgb24gbGVnYWN5IEJJT1MgbWFjaGluZXMKCkxpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGksCj4KPgo+IElzIHRoaXMgZ3VpZGVkIGlu
c3RhbGxlciBwYXJ0IG9mIHRoZSBhcmNoIGlzbz/CoCBJZiBzbywgaG93IGRvIHlvdSBnZXQgCj4g
aXQgZ29pbmc/P8KgIEkgd291bGQgbGlrZSB0byBnaXZlIHRoaXMgYSB0ZXN0IGFuZCBzZWUgaG93
IHRoaXMgd29ya3MuCj4KPgo+IE1hdHRoZXcKPgo+Cj4KPiBPbiAxMi8xNC8yMDIxIDc6NTkgQU0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IGVsbCB0aGVyZSdz
IGEgaGlzdG9yeSBvZiBwb3N0cyBhcyBmYXIgYXMgSmVudXggYnJlYWtpbmcgd2l0aCBwZW9wbGUg
Cj4+IHdheSBtb3JlIHF1YWxpZmllZCB0aGFuIG1lIGRpZ2dpbmcgdGhyb3VnaCB0aGUgY29kZSBh
bmQgaGF2aW5nIHRoaW5ncyAKPj4gYnJlYWsgb24gdGhlaXIgaW5zdGFsbHMuIEkndmUgcGVyc29u
YWxseSBoYWQgSmVudXggY29ycnVwdCBhIGZsYXNoIAo+PiBkcml2ZSB0byB0aGUgcG9pbnQgaXQn
cyBhIGdsb3JpZmllZCBwYXByd2VpZ2h0IGR1ZSB0byBzaGVuYW5pZ2FucyAKPj4gd2l0aCB3cml0
aW5nIHRvIGl0Lgo+Pgo+PiBUaGF0IGJlaW5nIHNhaWQuIE5vdyBBcmNoIGl0c2VsZiBoYXMgdGhl
IGd1aWRlZCBtb2RlIGluc3RhbGxlciwgd2hpY2ggCj4+IGlzIHBlcmZlY3RseSB1c2VhYmxlIHdp
dGggZXNwZWFrdXAgYW5kIHRoYXQgb25jZSBpbnN0YWxsZWQsIGFzIG9mIAo+PiB0aGlzIG1vbnRo
IGF1dG8gZW5hYmxlcyBzcGVlY2gvYnJhaWxsZSBhdCB0aGUgZW5kIG9mIHRoZSBpbnN0YWxsLCBJ
J2QgCj4+IGFyZ3VlIEFyY2ggYXJlIGRvaW5nIGEgYmV0dGVyIGpvYiBhdCBtYWtpbmcgdGhlaXIg
c3lzdGVtcyBhY2Nlc3NpYmxlKiAKPj4gdGhhbiBwZW9wbGUgYXNzdW1lIHRob3VnaC4gSTtkIGFs
c28gc2F5IG9rYXksIEFyY2ggaGFzIGEgZ3VpZGVkIAo+PiBpbnN0YWxsZXIgdGhhdCB3b3Jrcyoq
IGFuZCBpZiBib290ZWQgd2l0aCBhY2Nlc3NpYmlsaXR5IG9uLCBrZWVwcyAKPj4gdGhvc2Ugc2V0
dGluZ3MgYW5kIGdpdmVzIHlvdSBhIHdvcmtpbmcgKGJhc2UsIG1pbmQpIHN5c3RlbSBvdXQgb2Yg
dGhlIAo+PiBib3guCj4+Cj4+Cj4+ICogUHJvdmlkZWQgeW91IGluc3RhbGwgYWxzYS11dGlscy9l
c3BlYWt1cCBhcyBwZXIgYSBub3JtYWwgCj4+IGFjY2Vzc2liaWxpdHkgQXJjaCBpbnN0YWxsLiBU
aGVyZSdzIGEgc3RlcCBpbiB0aGUgZ3VpZGVkIGluc3RhbGxlciAKPj4gd2hlcmUgaXQgYXNrcyBm
b3IgZXh0cmEgcGFja2FnZXMsIHRoYXQncyB3aGVyZSB5b3UgcGx1ZyAKPj4gYWxzYS11dGlscy9l
c3BlYWt1cCBpbi4gZXNwZWFrdXAuc2VydmljZSBnZXRzIGF1dG8gZW5hYmxlZCBhdCB0aGUgZW5k
IAo+PiBvZiB0aGUgaW5zdGFsbCBhcyBwYXJ0IG9mIHRoZSBpbnN0YWxsZXIKPj4KPj4KPj4gKiog
V29ya3MsIGFzIGxvbmcgYXMgeW91J3JlIG9rYXkgd2l0aCBhIGJhc2UgaW5zdGFsbCBidXQgZ2V0
dGluZyBhIERFIAo+PiB1cCBhbmQgcnVubmluZyBpc24ndCB0aGF0IGJhZCByZWFsbHkgb25jZSB5
b3UgZGlkIHRoZSBpbnN0YWxsLiBJJ3ZlIAo+PiBub3QgZ290IHRoZSBkZXNrdG9wIG9uZXMgdG8g
d29yayBjdXJyZW50bHkgYnV0IHN0aWxsIHBva2luZyBhdCBpdC4gCj4+IEknbSB0ZW1wdGVkIHRv
IGFkZCBpbiBvcmNhLXNwZWVjaC1kaXNwYXRjaGVyIGFuZCBzbyBmb3J0aCBpbnRvIHRoZSAKPj4g
ZXh0cmEgcGFja2FnZXMgc3RlcC4KPj4KPj4KPj4gYXQgdGhhdCBob3dldmVyLgo+Pgo+Pgo+PiBP
biAxMi8xNC8yMSAxMjo0NiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPj4+IEhpLAo+Pj4KPj4+Cj4+PiBJIGRpZCB1c2UgdGhlIGxhdGVzdCBhcyBvZiBhYm91dCAx
NSBob3VycyBhZ28uIEkgZGlkIGFsc28gdmVyaWZ5IHRoZSAKPj4+IGlzby4KPj4+Cj4+Pgo+Pj4g
VGhlIGlzc3VlIHRoaXMgdGltZSBpcyB0aGF0IGFmdGVyIHJ1bm5pbmcgdGhlIGluc3RhbGxlciBh
bmQgCj4+PiByZWJvb3RpbmcsIG5vdGhpbmcgc3Bva2UuIHRoZSBzZWVpbmdBSSBvbiB0aGUgaXBo
b25lIGNvdWxkIHJlYWQgdGhlIAo+Pj4gc2NyZWVuIGp1c3QgZmluZSwgYnV0IEkgY291bGRuJ3QK
Pj4+Cj4+Pgo+Pj4gTGFzdCB0aW1lIGl0IHdhcyBvcmNhIGluIE1hdGUgdGhhdCBkaWRuJ3Qgd2Fu
dCB0byBjb21lIG9uLCBubyBtYXR0ZXIgCj4+PiB3aGF0IEkgZG8uCj4+Pgo+Pj4KPj4+IEkgZm91
bmQgdGhhdCB3aXRoIEplbnV4LCBuZXZlciBleHBlY3QgdGhlIHNhbWUgdGhpbmcgdG8gZ28gd3Jv
bmcgCj4+PiB0d2ljZSwgaG93ZXZlciBzb21ldGhpbmcgd2lsbCBicmVhay4KPj4+Cj4+Pgo+Pj4g
V2FybSByZWdhcmRzLAo+Pj4KPj4+Cj4+PiBCcmFuZHQKPj4+Cj4+PiBPbiAyMDIxLzEyLzE0IDE0
OjMxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+IEplbnV4
IGdldHMgcmVndWxhciB1cGRhdGVzIGxhdGVzdCBpcyAyMDIxLjExLjE3IHVubGVzcyB0aGF0IGNo
YW5nZWQgCj4+Pj4gdG9kYXkuCj4+Pj4gRGlkIHlvdSB2ZXJpZnkgeW91ciBpc28gZG93bmxvYWQ/
wqAgSWYgSSBmaW5kIGFuIC5zaGE1MTIgZmlsZSBmaWxlIAo+Pj4+IGZvciBhbgo+Pj4+IGlzbywg
SSB3b24ndCBpbnN0YWxsIHRoZSBpc28gd2l0aG91dCBmaXJzdCB2ZXJpZnlpbmcgaXQgd2l0aCB0
aGUgCj4+Pj4gLnNoYTUxMgo+Pj4+IGZpbGUuwqAgU28gdHdvIHBvdGVudGlhbCBwcm9ibGVtcyBu
b3QgdXNpbmcgY3VycmVudCBKZW51eCBpbnN0YWxsIAo+Pj4+IGlzbyBvcgo+Pj4+IGZhaWxlZCB0
byB2ZXJpZnkgaXNvLsKgIElmIHlvdSBkb24ndCBoYXZlIHRob3NlIHR3byBwcm9ibGVtcywgcGxl
YXNlIAo+Pj4+IHdyaXRlCj4+Pj4gZG5sLm5hc2hAZ21haWwuY29tIGFuZCBsZXQgaGltIGtub3cg
dGhlIHByb2JsZW0geW91IGVuY291bnRlcmVkIG9uIAo+Pj4+IHlvdXIKPj4+PiBpbnN0YWxsIGZh
aWwuwqAgVGhhdCBvbmUgaXMgdGhlIGRldmVsb3Blci4KPj4+Pgo+Pj4+Cj4+Pj4gT24gVHVlLCAx
NCBEZWMgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+
Pgo+Pj4+PiBIaSwKPj4+Pj4KPj4+Pj4KPj4+Pj4gSmVudXggZmFpbGVkIG9uIG1lLCBhZ2Fpbi4g
SSB0aGluayBJJ2xsIGdpdmUgaXQgYSBza2lwIGZvciBub3csIAo+Pj4+PiB0aGF0IGlzIHVubGVz
cwo+Pj4+PiB0aGUgZGV2IGFjdHVhbGx5IGZpeGVzIHRoZSB0aGluZy4KPj4+Pj4KPj4+Pj4KPj4+
Pj4gSSBhbSBvbiBGZWRvcmEsIGZvciBub3csIGJlY2F1c2UgaXQgd2FzIHRoZSBuZWFyZXN0IFVz
YiBzdGljayBJIAo+Pj4+PiBjb3VsZCBncmFiCj4+Pj4+IHF1aWNrbHkuCj4+Pj4+Cj4+Pj4+Cj4+
Pj4+IEkgbWlnaHQganVzdCBnaXZlIHRoZSB2YW5pbGxhIEFyY2ggSVNPIGFub3RoZXIgZ28uIFdo
eSBub3Q/Cj4+Pj4+Cj4+Pj4+IE9uIDIwMjEvMTIvMTQgMTM6MDUsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+PiDCoMKgb3IgTWFuamFybyBBcmNoaXRlY3Qu
Cj4+Pj4+Pgo+Pj4+Pj4gUGVyc29uYWxseS4gSSd2ZSBoYWQgc3VjY2VzcyB3aXRoIHRoZSB2YW5p
bGxhIEFyY2ggSVNPIGFuZCB0aGUgCj4+Pj4+PiBndWlkZWQKPj4+Pj4+IGluc3RhbGxlciAodGhl
IGFyY2hpbnN0YWxsIG9uZSksIEkganVzdCBzZXQgaXQgdG8gYm9vdCB1cCAKPj4+Pj4+IHRhbGtp
bmcsIHdlbnQKPj4+Pj4+IHRocm91Z2ggaXQgYW5kIGFkZGVkIGluIGFsc2EtdXRpbHMvZXNwZWFr
dXAgYW5kIHRoZW4gcHV0Cj4+Pj4+PiBzcGVlY2gtZGlzcGF0Y2hlci9PcmNhL3ZvaWNlcyBhbmQg
YSB3aW5kb3cgbWFuYWdlciBvbiBvbmNlIHRoZSAKPj4+Pj4+IHN5c3RlbSB3YXMKPj4+Pj4+IGlu
c3RhbGxlZC4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gSmVudXggaGFzIG5ldmVyIHJlYWxseSB3b3Jr
ZWQgZm9yIG1lIG9uIGEgVk0gb3IgYmFyZSBtZXRhbCBhdCAKPj4+Pj4+IGFsbCwgd2hlcmVhcwo+
Pj4+Pj4gdGhlIG9mZmljaWFsIGFyY2ggSVNPIGlzIHdvcmtpbmcgcmF0aGVyIHdlbGwsIGFuZCBJ
IGR1bm5vIGlmIHRoZSAKPj4+Pj4+IEFyY2hpdGVjdAo+Pj4+Pj4gZWRpdGlvbiBpcyAzNi82NCBi
aXQgb3IgMzJiaXQgb25seSBvciA2NGJpdCBvbmx5LiBBZG1pdHRlZGx5LCAKPj4+Pj4+IEkndmUg
Z290IGEKPj4+Pj4+IDY0Yml0IFVFRkkgc3lzdGVtIHNvIHRoZSBvZmZpY2lhbCBJU28gd29ya3Mg
Zmxhd2xlc3NseSBvbiBpdCAKPj4+Pj4+IGhvd2V2ZXIsIGJ1dAo+Pj4+Pj4gWU1NViBvbiB0aGF0
IG9uZVllcywgYnV0IHlvdSBwcm9iYWJseSBkb24ndCB3YW50IHRvIGhlYXIgaXQgaWYgCj4+Pj4+
PiB5b3UgYXJlIHNldAo+Pj4+Pj4gb24gdXNpbmcgSmVudXggaG93ZXZlci4KPj4+Pj4+Cj4+Pj4+
PiBPbiAxMi8xNC8yMSAwOToxOCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4+Pj4+PiBIaSBhbGwsCj4+Pj4+Pj4KPj4+Pj4+PiBJIGRlY2lkZWQgdG8gZ2l2ZSBK
ZW51eCBhbm90aGVyIGdvLCBsYXN0IHRpbWUsIG5vIG1hdHRlciB3aGF0IEkgCj4+Pj4+Pj4gdHJp
ZWQsIEkKPj4+Pj4+PiBjb3VsZG4ndCBnZXQgb3JjYSB0byBjb21lIG9uIGFmdGVyIGxvZ2dpbmcg
aW4gdG8gdGhlIHN5c3RlbS4KPj4+Pj4+Pgo+Pj4+Pj4+IERvZXMgYW55b25lIGhhdmUgYW55IGFk
dmljZT8KPj4+Pj4+Pgo+Pj4+Pj4+IEFsc28sIGlmIHRoaXMgZG9lc24ndCB3b3JrIG91dCwgaXMg
dGhlcmUgYSBndWlkZSBmb3IgZG9pbmcgYSAKPj4+Pj4+PiBNYW5qYXJvCj4+Pj4+Pj4gYXJjaGl0
ZWN0IGluc3RhbGw/ICJNYW5qYXJvIFRhbGtpbmciIGdvdCB1cGRhdGVkIGEgbGl0dGxlIHdoaWxl
IAo+Pj4+Pj4+IGFnbywgYW5kCj4+Pj4+Pj4gaWYsIGFzIEkgc2FpZCwgSmVudXggZG9lc24ndCB3
b3JrIG91dCwgSSdkIGxpa2UgdG8gZ2l2ZSB0aGF0IG9uZSAKPj4+Pj4+PiBhIGdvLgo+Pj4+Pj4+
Cj4+Pj4+Pj4gVGhhbmtzIHNvIGxvbmcuCj4+Pj4+Pj4KPj4+Pj4+PiBXYXJtIHJlZ2FyZHMsCj4+
Pj4+Pj4KPj4+Pj4+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Pj4+Pj4KPj4+Pj4+PiBTZW50IGZyb20g
bXkgTWFjQm9vayBBaXIKPj4+Pj4+Pgo+Pj4+Pj4+IENvbnRhY3Q6Cj4+Pj4+Pj4KPj4+Pj4+PiBQ
aG9uZTogKzI3ICgwKTYwIDUyNSA5MTgxIDx0ZWw6Ly8rMjc2MDUyNTkxODE+Cj4+Pj4+Pj4KPj4+
Pj4+PiBFbWFpbDogYnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5jb20gCj4+Pj4+Pj4gPG1haWx0bzpi
cmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbT4KPj4+Pj4+Pgo+Pj4+Pj4+IFR3aXR0ZXI6IEBicmFu
ZHRzdGVlbmthbXAgPGh0dHA6Ly93d3cudHdpdHRlci5jb20vYnJhbmR0c3RlZW5rYW1wPgo+Pj4+
Pj4+Cj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Cj4+Pj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+Pj4+Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

