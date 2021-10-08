Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 685C54260FB
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 02:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633652133;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MJNyPHzZNy0v/zUsiBbiYtuD5WIqq8ZohKf43hTYnsE=;
	b=JWIMexzEsO7QQh1mLPLrBc4lPGYYrhIw7Qqy586EaR6wSVl+WJm15A8tqcQRusb3Zx7GVa
	QlpsvJ8TChmGOxK6nMw2wGqv7uofQDTNeyEgFj0JKXNYZbc/XQHPGbR4FA74nSZaefSWC2
	RWZijIh19QPhRJGjVPQzsbGwKL2Pd+0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-454-w8pQxbOiPCqU-0uBwCcAJA-1; Thu, 07 Oct 2021 20:15:31 -0400
X-MC-Unique: w8pQxbOiPCqU-0uBwCcAJA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F3DFE835DE0;
	Fri,  8 Oct 2021 00:15:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D60BF42E0A9;
	Fri,  8 Oct 2021 00:15:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4604A1800B8B;
	Fri,  8 Oct 2021 00:15:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1980FN6r025542 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 20:15:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C551420239E1; Fri,  8 Oct 2021 00:15:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C12E72026D69
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:15:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 01711800182
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:15:15 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-361-IMIto_g2PFiH2QDeT8J2Sg-1; Thu, 07 Oct 2021 20:15:13 -0400
X-MC-Unique: IMIto_g2PFiH2QDeT8J2Sg-1
Received: by mail-pf1-f174.google.com with SMTP id g14so6723169pfm.1
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 17:15:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=A/UYhnt3plst3iaU+gBK5bWzdiEaM+j3Ne1KELiRMgI=;
	b=NN0YeJ2efpTNa44JLIz4f1c12muSPUg/1RcqTppIA8LW/mi1HQrv98bd5Xn6sOK2sU
	OGgujT1Hnbh0XR+h+8VdKCAl1hC6Bgm3VSnoh4Zfo/aYpL2DN+f4OQiqbxYueN1CVQBE
	kUlxO9AsVgnanCGtGOl7/QkhgIor0OnKOD+II1heKrpUbpAVNXq5jbH5QVyekxbPPxoG
	o9QnDsUfAFHcuW5QNzDeTemrv0z/nlGDKre84W+pY4cf4DfcTLUOSVkYLLXR5kkXkmei
	WoyFppi6aAcc74D0KLqYRlqwP3bOFypYJ2AgzFufN/PqAvR0tuQTulQHRkzOq7X1Wu7t
	9B/g==
X-Gm-Message-State: AOAM5338KFxMqS7m0X2OUwrN/i09HIO3JEi9vr/MSrG4GgPIlnw1owc7
	/CxeTadmw3smPSfg0ijmRkWcZJme1hY=
X-Google-Smtp-Source: ABdhPJwadVtX5QH1/G4+Hav8Bm5U3eIFdwJkCaLsXRSWiT9lUsGMifA5nWggWHt0j/sN9AFixJXyGA==
X-Received: by 2002:a05:6a00:cc9:b0:44c:2305:50de with SMTP id
	b9-20020a056a000cc900b0044c230550demr7242947pfv.79.1633652111921;
	Thu, 07 Oct 2021 17:15:11 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id i7sm497098pfr.218.2021.10.07.17.15.11
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Oct 2021 17:15:11 -0700 (PDT)
Message-ID: <77e7a791-8b0b-2089-8eb2-d6fb2159915f@gmail.com>
Date: Thu, 7 Oct 2021 20:15:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: Mate Desktop questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<7858163b-dcd0-ae6f-de2a-513ae0fa2aa0@gmail.com>
	<F8ADAC94-B1EA-4382-87A2-11C2363242BF@gmail.com>
	<01878e3f-894d-fcea-5d2e-703df8f93aa4@gmail.com>
In-Reply-To: <01878e3f-894d-fcea-5d2e-703df8f93aa4@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QSBuaWNlIGZlYXR1cmUgb2YgdGhlIG1lbnUgc3lzdGVtOsKgIGhpdCB0aGUgJ3N1cGVyOyBrZXkg
YW5kIHN0YXJ0IAp0eXBpbmcuIFlvdSdsbCBnZXQgYW4gaW5jcmVtZW50YWwKPiBzZWFyY2ggb2Yg
YXBwbGljYXRpb24gbmFtZXMgYW5kIGRlc2NyaXB0aW9ucywgYW5kIHBhZ2VzIGluIHRoZSBjb250
cm9sIGNlbnRlciBndWkuCgoKVGhpcyBtZW51IGlzIGEgdmVyeSBuaWNlIGFkZGl0aW9uIHRvIHRo
ZSBNQVRFIGRlc2t0b3AsIGFuZCBpcyBwYWNrYWdlZCAKZm9yIG90aGVyIGRpc3RyaWJ1dGlvbnMg
YXMgd2VsbC4gSW4gQXJjaCwgSSBmb3VuZCBtYXRlLW1lbnUgaW4gdGhlIEFVUiwgCmFuZCBpbiBG
ZWRvcmEsIGl0J3MgcGFja2FnZWQgaW4gdGhlIHJlcG9zaXRvcnkgYWxyZWFkeS4gSWYgeW91IGxp
a2UgdGhlIApNaW50IG1lbnUsIGp1c3QgaW5zdGFsbCB0aGUgbWF0ZS1tZW51IHBhY2thZ2UsIGdv
IHRvIHRoZSB0b3AgbGVmdCBjb3JuZXIgCm9mIHRoZSBzY3JlZW4sIG9yIGJvdHRvbSBsZWZ0IGlm
IHlvdSBvbmx5IGhhdmUgdGhlIGJvdHRvbSBwYW5lbCwgcmlnaHQgCmNsaWNrIHRoZSBtZW51IGJh
ciwgcmVtb3ZlIGl0IGZyb20gdGhlIHBhbmVsLCB0aGVuIGp1c3QgaGl0IHlvdXIgcmlnaHQgCmNs
aWNrIG9yIG1lbnUga2V5IGFnYWluIGFuZCBjbGljayAiQWRkIHRvIHBhbmVsLiIgU2VsZWN0ICJB
ZHZhbmNlZCBNQVRFIApNZW51IiBmcm9tIHRoZSBsaXN0IG9mIGFwcGxldHMgeW91IGNhbiBhZGQg
YW5kIHRoZW4ganVzdCBhY3RpdmF0ZSB0aGUgCmFkZCBidXR0b24uIFRoZSBiZXN0IHBhcnQgaXMg
dGhhdCB5b3VyIDMtcGFydCBtZW51IGJhciBnZXRzIHJlcGxhY2VkIAp3aXRoIHRoaXMgcmVhbGx5
IG5pY2Ugc3VwZXIga2V5IG1lbnUgdGhhdCBpbmNsdWRlcyB0aGUgaW5jcmVtZW50YWwgCnNlYXJj
aCwgYnV0IHlvdSBzdGlsbCBoYXZlIGFjY2VzcyB0byBhIG1lbnUgdGhhdCBjb21iaW5lcyBhcHBs
aWNhdGlvbnMsIApzeXN0ZW0gYW5kIHBsYWNlcyBpbnRvIGEgc2luZ2xlIG1lbnUgdXNpbmcgYWx0
X2YxLiBJIHBlcmZvcm1lZCB0aGlzIG1lbnUgCnJlcGxhY2VtZW50IHN1cmdlcnkgb24gbXkgRmVk
b3JhIG1hY2hpbmUgZmlyc3QgYWJvdXQgYSB3ZWVrIG9yIHR3byBhZ28sIAphbmQgSSBqdXN0IGRp
ZCBpdCBvbiB0aGUgQXJjaCBtYWNoaW5lIHRvZGF5LiBQZXJzb25hbGx5LCBJIGxpa2UgaXQgCmJl
dHRlciB0aGFuIEJyaXNrLCB3aGljaCBJIGZvdW5kIGZpcnN0LCBmcm9tIGEgcG9zdCBvbiB0aGlz
IGxpc3QgYWN0dWFsbHkuCgp+S3lsZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

