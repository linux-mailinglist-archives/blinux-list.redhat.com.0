Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id EDA8C3E888D
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 05:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628651027;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7nMzaP85RdfFMP7PrcDLku6bqGjtkFmv4Eb6x/++K3Q=;
	b=ZO+BdhhR7aGbC7JjaxNeVd4CsEOrhzbTAMWu5BbmtsagQv3IZXtP8qxlGkdU86XXuCRErv
	SYgcTO8QPHvi5Sf4JgxgRXq2qi+YYQay8ixtd5UtN0GryFr06WMs6uBrHfdfdzOMSFJmgX
	9P9NHUy+vJM4OJ8qSeLnT/ZxKTPmM1Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-587-KOR9-eYTMgSEVSsXHjWi3A-1; Tue, 10 Aug 2021 23:03:45 -0400
X-MC-Unique: KOR9-eYTMgSEVSsXHjWi3A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 970A6107ACF5;
	Wed, 11 Aug 2021 03:03:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A46310016FB;
	Wed, 11 Aug 2021 03:03:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2A1AA4BB7C;
	Wed, 11 Aug 2021 03:03:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17B33cSR018543 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 23:03:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 149CE204472B; Wed, 11 Aug 2021 03:03:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 102C12044721
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 03:03:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05773185A7A4
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 03:03:35 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-273-0D3vQshRMiaMhU_x5i9ccw-1; Tue, 10 Aug 2021 23:03:32 -0400
X-MC-Unique: 0D3vQshRMiaMhU_x5i9ccw-1
Received: by mail-oi1-f180.google.com with SMTP id h11so2527861oie.0
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 20:03:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=p76hvNYrjjsE7vxAzy6Ybx+lNIGqTm2R6IIMtaVSAcw=;
	b=iSXg3ZxwRssA/PqAGCJqRTD09XITwv0cn9CfbcPoqE2131siNs7Yb/E1fDhdE64PDi
	IFEsSFq1JIF9cENmNSRdnwoVFKDInSPLdFxk0QceJO20Ux4NbyYVEiJDseeKiKlOLcpH
	WQMkAMvaHmdSl8yD9ZQnEqqZT+L+Uw+1LUqstOIuZbYanseRzuH1TJybcQQarVX+JPtF
	NrTxH75tiy71qTkM37NITqInvM/gDUkfiSSM35XFNtFnB5SqNkVDplKXSRf1GqJoK1RJ
	IyGYMuWUekhiYg13tBTSR+LHZ1FcmIXpakqdHeIcYcjpeZYekLu7sk1vcoT8J+j8Nel+
	NfcQ==
X-Gm-Message-State: AOAM530af4JhXGUkuY1amf9NrJZiY4wX3NoJBotiZbCMR5+KETSliYs6
	R8kwI9z8wn064lYVLDnvvQhDmgp/jx7+LQ==
X-Google-Smtp-Source: ABdhPJxwH7dJBsonHGXodv2V3TVTPM6fabVK/hLvkKzoRI/cFPOfy0T6Dj8Wbwa18T66A3lcKnrXRg==
X-Received: by 2002:a05:6808:15a7:: with SMTP id
	t39mr5941290oiw.175.1628651011666; 
	Tue, 10 Aug 2021 20:03:31 -0700 (PDT)
Received: from ?IPv6:2601:501:100:cb70:4d42:6605:2d23:1f1c?
	([2601:501:100:cb70:4d42:6605:2d23:1f1c])
	by smtp.gmail.com with ESMTPSA id n5sm1479271oij.56.2021.08.10.20.03.30
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Aug 2021 20:03:31 -0700 (PDT)
Subject: Re: Help, I need a Windows VM for my work
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
	<68508c52-c4fe-c94a-155a-3d0cf3196645@gmail.com>
	<a3df77f7-5f26-2f4d-ea06-bad6b23fd87d@slint.fr>
Message-ID: <25f6da92-c3ca-12dd-1e7d-b6d431c63591@gmail.com>
Date: Tue, 10 Aug 2021 20:03:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <a3df77f7-5f26-2f4d-ea06-bad6b23fd87d@slint.fr>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBjYW4geW91IHNlbmQgcHJpdmF0ZWx5IHBsZWFzZSBpdCBkaWRuJ3QgYXR0YWNoCgpP
biA4LzEwLzIwMjEgNzoyNSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiBIeSBCcmFuZHQsCj4KPiBXZWlyZCwgaXQgd2FzIGF0dGFjaGVkLgo+Cj4gSSBhdHRh
Y2ggaXQgYWdhaW4gdG8gdGhpcyBlbWFpbCwgdGhhdCBJIGFsc28gc2VuZCB5b3UgcHJpdmF0ZWx5
Lgo+Cj4gSXQgaXMgbmFtZWQgd2luZG93cy5zaAo+Cj4gQ2hlZXJzLAo+IERpZGllcgo+Cj4gTGUg
MTAvMDgvMjAyMSDDoCAxNjoxMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBh
IMOpY3JpdMKgOgo+PiBIaSBEaWRpZXIsCj4+Cj4+Cj4+IERvZXNuJ3QgbG9vayBsaWtlIHRoZSBz
Y3JpcHQgZ290IGF0dGFjaGVkLgo+Pgo+Pgo+PiBSZWdhcmRzLAo+Pgo+Pgo+PiBCcmFuZHQKPj4K
Pj4gT24gOC8xMC8yMSAzOjU5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+Pj4gSGkgYWdhaW4gQnJhbmR0LAo+Pj4KPj4+IFRoZSBzY3JpcHQgaXMgYXR0YWNo
ZWQKPj4+Cj4+PiBJbnRydWN0aW9ucyBmb3IgdXNlOgo+Pj4gMS4gQ3JlYXRlIGEgZGlyZWN0b3J5
IH4vcWVtdQo+Pj4gQXNzdW1pbmcgdGhhdCB5b3VyIHVzZXJuYW1lIGlzIGJyYW5kdDsgaHVzdCB0
eXBlIHRvIGRvIHRoYXQ6Cj4+PiBta2RpciAvaG9tZS9icmFuZHQvcWVtdQo+Pj4gb3IganVzdDoK
Pj4+IG1rZGlyIH4vcWVtdQo+Pj4gQXMgYSByZW1pbmRlciwgfiBzdGFuZHMgZm9yIC9ob21lLzx1
c2VybmFtZT4KPj4+IEluIG15IGNhc2UgL3Vzci9kaWRpZXIsIGluIHlvdXJzIEkgYXNzdW1lIC9o
b21lL2JyYW5kdAo+Pj4gYnV0IGFueXdheSB0aGUgb3V0cHV0IG9mIHRoaXMgY29tbWFuZCB3aWxs
IHRlbGwgeW91Ogo+Pj4gZWNobyB+Cj4+Pgo+Pj4gMi4gbW92ZSB0aGUgV2luZG93cyBJU08gZmls
ZSBpbiB+L3FlbXUswqAgcmVuYW1lZCB+L3FlbXUvd2luIHdpbmRvd3MuaXNvCj4+PiBGb3IgaW5z
dGFuY2UgaGVyIEkgZGlkIHRoaXM6Cj4+Pgo+Pj4gL2RhdGEvaW1hZ2VzX0lTTy9XaW5kb3dzMTBf
SW5zaWRlclByZXZpZXdfQ2xpZW50X3g2NF9mci1mcl8yMTM1NC5pc28KPj4+Cj4+PiAzLiBEb3du
bG9hZCB0aGUgc2NyaXB0IHdpbmRvd3Muc2ggYW5kIHN0b3JlIGl0IHNvbWV3aGVyZQo+Pj4gQ2hh
bmdlIHRvIHRoZSBkaXJlY3Rvcnkgd2hlcmUgaXQgaXMgaW5zdGFsbGVkIGFuZCBydW4gaXQgbGlr
ZSB0aGlzOgo+Pj4gc2ggd2luZG93cy5zaAo+Pj4gVGhlbiBwcmVzcyBFbnRlci4KPj4+IFByZXNz
wqAgRW50ZXIgYWdhaW4gYWZ0ZXIgNSBzZWNvbmRzIHRvIG1ha2Ugc3VyZSBpdCBzdGFydHMgdGhl
IFdpbmRvd3MKPj4+IFdhaXQgcGF0aWVudGx5IHVudGlsIHRoZSBpbnN0YWxsZXIgZGlzcGxheXMg
aXRzIGZpcnN0IHNjcmVlbiBpbiB0aGUgVk0uCj4+Pgo+Pj4gTm90ZXM6Cj4+PiBZb3UgbmVlZCB0
byBiZSBpbiBhIGdyYXBoaWNhbCBlbnZpcm9ubWVudCBsaWtlIE1hdGUuCj4+PiBJZiB0aGUgVk0g
c3RlYWxzIHRoZSBmb2N1cywgdHlwZSBDdHJsK0FsdCtHIHRvIGdldCBpdCBiYWNrIG9uIHRoZSBo
b3N0Lgo+Pj4KPj4+IEFmdGVyIFdpbmRvd3MgaW5zdGFsbGF0aW9uLCBydW5uaW5nIHRoZSBzY3Jp
cHQgc2hvdWxkIHN0YXJ0IFdpbmRvd3MgCj4+PiBkaXJlY3RseSBpbgo+Pj4gdGhlIFZNLgo+Pj4K
Pj4+IENoZWVycywKPj4+IERpZGllcgo+Pj4KPj4+Cj4+PiBMZSAxMC8wOC8yMDIxIMOgIDE1OjA2
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+Pj4gSGkg
QnJhbmR0LAo+Pj4+Cj4+Pj4gSSB3aWxsIGF0dGFjaCB0byBteSBuZXh0IG1lc3NhZ2UgYSBzY3Jp
cHQgdGhhdCBzZXRzIHVwIGEgcWVtdSBWTQo+Pj4+IGFsbG93aW5nIHRvIGluc3RhbGwgdGhlbiBy
dW4gV2luZG93cyBsYXRlciB0b2RheSBhZnRlciBtb3JlIHRlc3RpbmcuCj4+Pj4KPj4+PiBJdCBz
aG91bGQgYmUgdXNhYmxlIGluIGFueSBMaW51eCBkaXN0cmlidXRpb24gd2l0aCBhIHJlY2VudCBx
ZW11IAo+Pj4+IGluc3RhbGxlZC4KPj4+Pgo+Pj4+IENoZWVycywKPj4+Pgo+Pj4+IERpZGllcgo+
Pj4+Cj4+Pj4KPj4+PiBMZSAxMC8wOC8yMDIxIMOgIDEyOjU1LCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+Pj4+IEhpIGFsbCwKPj4+Pj4KPj4+Pj4KPj4+
Pj4gQXMgSSBzdGF0ZWQgYmVmb3JlLCBJIGFtIHJ1bm5pbmcgU2xpbnQgb24gdGhlIGJhcmUgbWV0
YWwsIGhvd2V2ZXIgCj4+Pj4+IG15IHdvcmsgZW50YWlscyB0ZWFjaGluZyBOVkRBIHRvIGNsaWVu
dHMsIG9idmlvdXNseSBydW5uaW5nIFdpbmRvd3MuCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRoZXJlZm9y
IEkgZGVzcGVyYXRlbHkgbmVlZCBhIFdpbmRvd3MgVk0sIHNvIEkgY2FuIG1ha2UgYSBsaXZpbmcu
IAo+Pj4+PiBJIGNhbm5vdCBmaWd1cmUgcWVtdSwgdmlydHVhbC1ib3gsIEkgaGF2ZSBubyBpZGVh
LCBhbmQgVk1XYXJlIAo+Pj4+PiBXb3Jrc3RhdGlvbiBQbGF5ZXIgZG9lc24ndCB3YW50IHRvIGlu
c3RhbGwgdW5kZXIgU2xpbnQuCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IENvdWxkIHNvbWVvbmUgcGxlYXNl
LCBwbGVhc2UsIGdpdmUgbWUgY29uY2lzZSBpbnN0cnVjdGlvbnMgZm9yIAo+Pj4+PiBzZXR0aW5n
IHVwIGEgVk0gdXNpbmcgcWVtdSBpbiBTbGludD8KPj4+Pj4KPj4+Pj4KPj4+Pj4gV2FybSByZWdh
cmRzLAo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Pj4+Cj4+Pj4+Cj4+Pj4+
IFNlbnQgZnJvbSBteSBnYXNzIHBvd2VyZWQgU2xpbnQgaGFpciBkcnllci4KPj4+Cj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=

