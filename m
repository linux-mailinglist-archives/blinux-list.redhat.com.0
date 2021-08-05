Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3D53A3E119E
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 11:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628156887;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dVy5ivVf1MnzDwkWCHTS89DXTmZCH5pobnQQeL+0yfk=;
	b=Idz2UjbzJFwwohInhcDCiX5Mpc1deC+ASP4MC8mnqOLwyatQUwqCh0DtEho+YTDacibB/x
	CZQldoabsqoyc0nvrIsktTU8iVZ+9sHZVApYD+WmWsXFdSrVXT0Tky72g7M4h85dwN50Wo
	95SxihN+8zh/FPIOUZISS9KeO8PHrOM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-454-PWANPAUWMRC6hDdmxNnBfg-1; Thu, 05 Aug 2021 05:48:05 -0400
X-MC-Unique: PWANPAUWMRC6hDdmxNnBfg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 134F8804328;
	Thu,  5 Aug 2021 09:48:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DDCF169280;
	Thu,  5 Aug 2021 09:48:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 40E3B4BB7C;
	Thu,  5 Aug 2021 09:48:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1759lvpS018504 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 05:47:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6740D10C733B; Thu,  5 Aug 2021 09:47:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 626D610CB29C
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 09:47:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 779B8101A52C
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 09:47:53 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-29-qsIOHjMrMdCr66lYQxbP8g-1; Thu, 05 Aug 2021 05:47:51 -0400
X-MC-Unique: qsIOHjMrMdCr66lYQxbP8g-1
Received: by mail-wr1-f53.google.com with SMTP id c9so5672867wri.8
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 02:47:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2ISuSVFPImCb2erfBzMPR8joO7jfiN8WyZuUIncDOWg=;
	b=HL+umjLISidcWnXYbT/efsx2RHEX9KdKug87Vr7K+i7QIpCO//P2F4Pz0jueRegQWg
	CX4k6z6/n9OYJEEE1UfUMauN6F36yl4XslWcFOZvy8FjSnOpS07IwxNe2MbAyQO/zqSi
	1DMXhghQMYXuAoj2VICtIHD+VHTr1xx5MvW36EJAdIFKNCnzo4GR+luRxR0Wy6onOQ14
	VwxU9D3odAaTiWnq65WdOgqqW03FD+mzSdOQSdF06tO6AzEHNdD4jPlsbBil4zZmkS4/
	WwcxvclXI0VfFJ9QcMhjQez2vfzXYXy0opLkzTG+w0NI7WsRSKAudQaSpN+37Y5IwGCM
	CW2A==
X-Gm-Message-State: AOAM530V9vZ+H3tF6KBkCOaJDcAF0+9iHGxAE9AmfSnR5ZI0dUEm6mHQ
	r5rvSaP9j7xPfaCzmpcud+o+/WIIpDtT8Q==
X-Google-Smtp-Source: ABdhPJwLDvMy+VkFJHiunD4Zzmqi//WAydlYrHKP6NP8cWkKJhvpFFMe8yX/YvBL8paCLKKwzOw00g==
X-Received: by 2002:a05:6000:124b:: with SMTP id
	j11mr4190128wrx.348.1628156870024; 
	Thu, 05 Aug 2021 02:47:50 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.109.16])
	by smtp.gmail.com with ESMTPSA id j5sm5364845wrs.22.2021.08.05.02.47.48
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 02:47:49 -0700 (PDT)
Subject: Re: Looking for help with switching on the bare metal.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <005601d789d0$5ca614b0$15f23e10$@gmail.com>
	<f94b08ef-317d-6816-b70a-7e153cf899ed@gmail.com>
Message-ID: <54ee44c5-feda-5642-b4e9-8182825bfa34@gmail.com>
Date: Thu, 5 Aug 2021 11:47:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f94b08ef-317d-6816-b70a-7e153cf899ed@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKU29ycnkgZm9yIHNvdW5kaW5nIGxpa2UgYSBuZXdiaWUsIGJ1dCB3aGF0IGluIHRoZSB3
b3JsZCBpcyBPY3RhbmUsIGFuZCAKaG93IHdvdWxkIHlvdSBraWxsIGl0IG9mZj8KCgpXYXJtIHJl
Z2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IHVzaW5nIFRodW5kZXJiaXJkIGZyb20gU2xp
bnQKCk9uIDgvNS8yMSAxMToxOCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBUbyBtZSB0aGF0IGxvb2tzIGxpa2UgaXQnZCBydW4gc29tZXRoaW5nIGxpa2Ug
dGhlIG5ld2VzdCBMVFMgVWJ1bnR1LCAKPiBBcmNoIG9yIFNvbHVzIG9yIEZlZG9yYSBhbmQgc28g
b24sIGl0J3MgYSBnb29kIHNwZWMgbWFjaGluZSByZWFsbHkuIElmIAo+IHlvdSdyZSBhYmxlIHRv
IGtpbGwgb2ZmIE9jdGFuZSBhbmQgaXRzIHJlbGF0ZWQgc3R1ZmYgYW5kIG1heWJlIHNlY3VyZSAK
PiBib290IGlmIG5lZWRlZCwgdGhlbi4uLi5zaG91bGQsIGluIHRoZW9yeSwgYmUgZ29vZCB0byBn
bwo+Cj4gT24gOC81LzIxIDk6MDMgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+IEhpIGFsbCwKPj4KPj4KPj4gQXQgdGhlIG1vbWVudCBJIGFtIHJ1bm5pbmcg
bXkgTGludXggaW4gdmlydHVhbCBNYWNoaW5lcywgc2ltcGx5IAo+PiBiZWNhdXNlIEkgZG8KPj4g
bm90IGhhdmUgaGFyZHdhcmUgdGhhdCBJIHRydXN0IHRvIHdvcmsgY29ycmVjdGx5LiBJIGFtIGN1
cnJlbnRseSB1c2luZyBhCj4+IEh1YXdlaSBNYXRlYm9vayBzZWUgc3BlY3MgYmVsb3cuCj4+Cj4+
Cj4+IERldmljZSBuYW1lwqDCoMKgwqDCoCBMQVBUT1AtNTdWQ01DRjEKPj4KPj4gUHJvY2Vzc29y
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJbnRlbChSKSBDb3JlKFRNKSBpNS0xMDIxMFUgQ1BVIEAg
MS42MEdIeiAyLjExIEdIego+Pgo+PiBJbnN0YWxsZWQgUkFNwqDCoMKgIDE2LDAgR0IgKDE1LDgg
R0IgdXNhYmxlKQo+Pgo+PiBEZXZpY2UgSUTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRTUzM0RC
QUQtNTBGQS00OEZGLUE5QUMtNEIxQjlCQkM0NjJECj4+Cj4+IFByb2R1Y3QgSUTCoMKgwqDCoMKg
wqDCoMKgwqAgMDAzNDItNDE0MjgtNDY3NjctQUFPRU0KPj4KPj4gU3lzdGVtIHR5cGXCoMKgwqDC
oMKgwqDCoCA2NC1iaXQgb3BlcmF0aW5nIHN5c3RlbSwgeDY0LWJhc2VkIHByb2Nlc3Nvcgo+Pgo+
PiBQZW4gYW5kIHRvdWNowqDCoCBObyBwZW4gb3IgdG91Y2ggaW5wdXQgaXMgYXZhaWxhYmxlIGZv
ciB0aGlzIGRpc3BsYXkKPj4KPj4KPj4gVGhpcyBtYWNoaW5lLCBhcyBmYXIgYXMgSSBjYW4gdGVs
bCwgaXMgcmF0aGVyIG5ldy4gSSBoYXZlIHRyaWVkIGxvb2tpbmcKPj4gb25saW5lLCBidXQgYW0g
bm90IHN1cmUgYWJvdXQgd2hhdCBJIGFtIGZpbmRpbmcsIG9yIGZvciB0aGF0IG1hdHRlciwgbm90
Cj4+IGZpbmRpbmcuIElmIGFueW9uZSBjYW4gaGVscCBtZSB3aXRoIHRoaXMgbWFjaGluZSwgSSdk
IGJlIGdyYXRlZnVsLgo+Pgo+Pgo+PiBXYXJtIHJlZ2FyZHMsCj4+Cj4+Cj4+IEJyYW5kdAo+Pgo+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

