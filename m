Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E730534111A
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 00:36:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616110583;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HL6OK42VShAN1ysERSPFQl/fSey7A/Jz3yu2GvsQGyo=;
	b=NydFuaPR3ygyNZjGaS/bbWE/Od/WekTkl9+U6iEuhPqXj5Ig/9koTbjljUOm8umxBK7vRr
	wmKBkSp3ZMTK5kwHvF3xIaBWj+159gHt8uDEWsn+d45+JGMtwSuF2a/DqD1aqMQPjlCKNw
	cl5+a8Jp3+PHWPMVcGPBZIejOvpMB68=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-533-jSbxa6ExOASjjsTlljdEPQ-1; Thu, 18 Mar 2021 19:36:20 -0400
X-MC-Unique: jSbxa6ExOASjjsTlljdEPQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD50A180FCAE;
	Thu, 18 Mar 2021 23:36:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B19B85D9D0;
	Thu, 18 Mar 2021 23:36:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8E5D04BB7C;
	Thu, 18 Mar 2021 23:36:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12INaEJ4025676 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 19:36:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E05442166BA2; Thu, 18 Mar 2021 23:36:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA9B62166B44
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:36:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 16564801E8D
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:36:11 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-475-FxQSZYFvMM2e8g52drHfLg-1; Thu, 18 Mar 2021 19:36:03 -0400
X-MC-Unique: FxQSZYFvMM2e8g52drHfLg-1
Received: by mail-wr1-f44.google.com with SMTP id x13so7278855wrs.9
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 16:36:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qfK4AogTkz3mVeA+S/7Or6sGqs4rehhiV+G05XDhSLc=;
	b=mepZiWy70fMn7IcVX5DTHVY1EAhtIPZJ1MpuIr9dlMKM+MAQjqPZLldAjcrVHBl9WG
	JX6NFy5NDPwvcjYdpdNWIha+PoSA+ic3TYMzK9kwT6vw665ySGDz86XZe9sUTFTRg8hP
	ZqbMiaPHxR/Q53H42EnJ7xO5SDJi8kl8+P6gUrecM3uHvqw3tC5T0NqmYzLWOF8vDM6d
	7sTMDSTx3LUrfLm/m1dtEAJu5yzfV8/8p09mvJ6LY+TAyV9LOg6TXav8BcplgzLSP3kN
	Uw36nQ+Hn0uneqrvtZ5VYahnGKZK/qv4yAze0NFe9D9rTuyF0iZaZ5dlzRTMZAC7vybO
	0mdw==
X-Gm-Message-State: AOAM533gNtj8lO86u2oMq05nJLOjUMJ5cTvFQ7d+c5sPtLoad9/qTeVs
	Zm1eCjPsD+3q7VVe7iv2YMVOydLGXAM=
X-Google-Smtp-Source: ABdhPJx3y63hchjQRQL42YGIL968ktJvYTweBcMikFV6b9sIIfPU4gIsYIzRdvK1UqM+YuMedapefw==
X-Received: by 2002:adf:eb0a:: with SMTP id s10mr1616859wrn.6.1616110562688;
	Thu, 18 Mar 2021 16:36:02 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id l9sm3439549wmq.2.2021.03.18.16.36.02
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Mar 2021 16:36:02 -0700 (PDT)
Subject: Re: Decluttering Thunderbird/other alternatives?
To: blinux-list@redhat.com
References: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
	<ab3298ec-a4d7-f2a1-e422-922ca49959d9@protonmail.com>
Message-ID: <52525960-5269-3d0c-edc2-6750116992ca@gmail.com>
Date: Thu, 18 Mar 2021 23:36:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <ab3298ec-a4d7-f2a1-e422-922ca49959d9@protonmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSdtIHVzaW5nIHRoZSBsYXRlc3QgVGh1bmRlcmJpcmQgb24gVWJ1bnR1IE1hdGUgMjAuMDQsIGFu
ZCB5ZXMgdGhlIHRvZGF5IApwYW5lIGlzIHdoYXQgSSdtIHJlZmVyaW5nIHRvLCB3aGljaCBwdXQg
YSBjYWxlbmRhciBhYm92ZSB0aGUgZm9sZGVyIApsaXN0LCBhbmQgdGhlIGZpbHRlciBtZXNzYWdl
cy9zZWFyY2ggYmFyLiBXaGljaCBpcyBpbmZpbml0ZWx5IGFubm95aW5nIApzaW5jZSBNb3ppbGxh
IGRlY2lkZWQgdG8gaGF2ZSBpdCBvbiBieSBkZWZhdWx0LCBhbmQgdGhpcyB3YXMgcHVibGljaXpl
ZCAKYmVmb3JlIHRoZSBsYXRlc3QgdXBkYXRlIG9mIFRodW5kZXJiaXJkLgoKT24gdGhlIHN1Ympl
Y3Qgb2YgQWxwaW5lL011dHQsIEknbSBydW5ubmluZyBpbnRvIGlzc3VlcyB3aXRoIEdtYWlsIApn
aXZpbmcgbWUgY3JpdGljYWwgc2VjdXJpdHkgaXNzdWVzIGR1ZSB0byBob3cgTXV0dC9BbHBpbmUg
aGFuZGxlIAphdXRoZW50aWNhdGluZyB0aGluZ3MsIHNvIFRpbSwgYW55IGlkZWFzPwoKT24gMTgv
MDMvMjAyMSAyMzoxOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
PiBoZXkgdGhlcmUsCj4KPiBobW0sIEknbSBhZmZyYWlkIEkga2luZCBvZiBkb24ndCB1bmRlcnN0
YW5kIGl0Lgo+Cj4gSG93IGV4YWN0bHkgaXMgVGh1bmRlcmJpcmQgY2x1dHRlcj8KPgo+Cj4gQXMg
Zm9yIExpZ2h0bmluZywgeWVzLCBpdCB1c2VkIHRvIGJlIHRoZXJlLCBidXQgaXQgd2FzIG5ldmVy
IGFwcGVhcmluZwo+IGFueXdoZXJlIG5lYXIgdGhlIGNvbXBvbmVudHMgdXNlZCBmb3IgbmF2aWdh
dGlvbiwgYW5kIHdhcyBzbyBpbnZpc2libGUsCj4gdGhhdCBJIGRvbid0IHJlbWVtYmVyIGV2ZXIg
c2VlaW5nIGl0Lgo+Cj4gSW4gZmFjdCwgSSBkb24ndCBldmVuIGtub3csIHdoZXRoZXIgaXQgaXMg
c3RpbGwgaGVyZSBvciBub3QuIDpECj4KPiBUaGVyZSB3ZXJlIHZhcmlvdXMgY2hhbmdlcywgYW5k
IEkgZG9uJ3QgcmVtZW1iZXIgd2hhdCdzIHRoZSBjdXJyZW50Cj4gcmVzb2x1dGlvbi4KPgo+Cj4g
QXMgZm9yIHRoZSBuZXcgbWVzc2FnZSB3aW5kb3csIHdoYXQgdmVyc2lvbiBvZiBUQiBkbyB5b3Ug
dXNlPwo+Cj4gSW4gNzgrIHJlbGVhc2VzLCB0aGUgcmVjaXBpZW50IGZpZWxkIHdhcyByZXBsYWNl
ZCBieSBhIG5ld29uZSwgd2hpY2gKPiBhbGxvd3MgeW91IHRvIHdyaXRlIGV2ZXJ5dGhpbmcgdG8g
dGhhdCBvbmUgcGxhY2UuCj4KPiBSaWdodCBhZnRlciBmaW5pc2hpbmcgdGhlIGFkZHJlc3MgYW5k
IHRhYmJpbmcgb3IgbWF5IGJlIHByZXNzaW5nIHNvbWUKPiBrZXkgKEkgZGlkIG5vdCBjaGVjayks
IGl0IGRpc2FwcGVhcnMgYW5kIG5leHRvbmUgY2FuIGJlIHdyaXR0ZW4sIGlmIHlvdQo+IHdpc2gg
dGhlIG1lc3NhZ2UgdG8gYmUgc2VuZCB0byBhbnlvbmUgZWxzZS4KPgo+Cj4gU28gaW4gcHJhY3Rp
Y2UsIHlvdSBuZWVkIGp1c3Qgb25lIHRhYiB0byBnZXQgdG8gdGhlIHN1YmplY3QgZmllbGQuCj4K
Pgo+IEluIGdlbmVyYWwsIEknbSBwZXJzb25hbGx5IHJlYWxseSBzYXRpc2ZpZWQgd2l0aCBUQi4g
SXQgcGVyaGFwcyBjb3VsZCBiZQo+IGEgbGl0dGxlIGJpdCBmYXN0ZXIgd2l0aCBpbWFwIGFjY291
bnRzLCBidXQgc2luY2UgSSB1c2UgUHJvdG9ubWFpbCwKPiB3aGljaCBwcm92aWRlcyBpdHMgb3du
IGFwcCB0byBjcmVhdGUgYSBsb2NhbCBpbWFwIHNlcnZlciBmb3IgZW5kIHRvIGVuZAo+IGluYm94
IGVuY3J5cHRpb24gLyBkZWNyeXB0aW9uLCB0aGF0IGRvZXNuJ3QgcmVhbGx5IGJvdGhlciBtZSBh
cyBsb2NhbAo+IHNvY2tldHMgaGF2ZSBwcmFjdGljYWxseSBubyBzcGVlZCBsaW1pdHMuCj4KPgo+
IEJlaW5nIGFibGUgdG8gc29ydCBlLW1haWxzIHRvIHRocmVhZHMgKGluIGEgbG9naWNhbCB3YXks
IHVubGlrZQo+IEV2b2x1dGlvbiksIHJlY2VpdmUgUlNTIG5ld3MgYW5kIHdyaXRlIGVNYWlscyBp
biBNYXJrZG93biwgSSBwZXJzb25hbGx5Cj4gY3VycmVudGx5IGRvbid0IGhhdmUgYW55IHJlYXNv
bnMgdG8gc2VhcmNoIGFsdGVybmF0aXZlcywgZXhjZXB0IG15Cj4gY3VyaW9zaXR5LiA6KQo+Cj4K
PiBCZXN0IHJlZ2FyZHMKPgo+Cj4gUmFzdGlzbGF2Cj4KPgo+IETFiGEgMTguIDMuIDIwMjEgbyAx
NjowMSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+PiBT
byBpcyB0aGVyZSBhIHdheSBJIGNhbiBkZWNsdXR0ZXIgVGh1bmRlcmJpcmQgdG8gYmUgc2ltcGxl
ci9lYXNpZXIgdG8KPj4gbmF2aWdhdGU/IEkgZG9uJ3QgL25lZWQvIExpZ2h0bmluZ3Rha2luZyB1
cCBzcGFjZSwgb3IgaGF2aW5nIHRvIHRhYgo+PiB0d2ljZSBpbiB3cml0aW5nIGEgbWVzc2FnZSB0
byBnZXQgdG8gdGhlIHN1YmplY3QgZmllbGQuCj4+Cj4+IFNvIGNhbiBJIGRvIGFueXRoaW5nIHRv
IGRlY2x1dHRlciBUaHVuZGVyYmlyZC4gT3IgYXJlIHRoZXJlIGFueQo+PiBhbHRlcm5hdGl2ZSBl
bWFpbCBwcm9ncmFtcyB0aGF0IGFyZSBqdXN0IGFzIGdvb2QgYXMgVGh1bmRlcmJpcmQgdGhhdAo+
PiB3b3JrIGdyZWF0IHdpdGggT3JjYT8KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

