Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id F32CD37009C
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 20:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619807746;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xgz3uwESMVyl59Am8YF7G3Vxe0FrYRhy7pbbFWV0l0M=;
	b=Btri/x9+Rj2+vVpzJKAte0e5vHdPmQGdVSGZa5kH5JVRtMAdWmW0RGuMjUaEmgCYf5vQ5p
	Xym9yVkM+h5bCFPfOvM+OQ5hHOj55DV90muKPQ5DUL6DOhoH/oSA/zWNLDGrQhyu/EJnAG
	Pwi1Tji9Zr3MhJiePDWLknktIggaclU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-498-SZGuZ7VrOm-sCjy3Rm9IqQ-1; Fri, 30 Apr 2021 14:35:43 -0400
X-MC-Unique: SZGuZ7VrOm-sCjy3Rm9IqQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 867136D249;
	Fri, 30 Apr 2021 18:35:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E4C018F0A;
	Fri, 30 Apr 2021 18:35:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1F7BB38397;
	Fri, 30 Apr 2021 18:35:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UIZa1L017041 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 14:35:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 42F2020D7404; Fri, 30 Apr 2021 18:35:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E99020D7400
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:35:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2753101A54C
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:35:33 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-319-HaDhYIf3Pz6UJONOdg0F2Q-1; Fri, 30 Apr 2021 14:35:31 -0400
X-MC-Unique: HaDhYIf3Pz6UJONOdg0F2Q-1
Received: by mail-qt1-f179.google.com with SMTP id d12so14262254qtr.4
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 11:35:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Rc1Gw8Pzv3iE7Aq+KYnE9kXK99WvPS4qvDRJ5oUf+ZA=;
	b=m0xBRaOzX1wSpxjYgyw4QXKYbK7Gv67H3b2VB7nnookFPJdKlUgESU8izb8m7Jnb7R
	XLIERpD4BI+HTOicRnXoe3vfjtOv5XokkqlTui9/o4WuhCLV6yGdpBA7sLNQnZOp8IdO
	6Eg774i/j49WXginehEOriObHx3uVLWRzN8O8Wplv4VqLf35gA9BY0BKhL+o8LkoQN8B
	dv6suSFa2hrAHhFgLdF3Yer1ULZLTOYmErx3cYJmVVxS38vXN0Ao61KDg7b1WH+PxNkv
	upfbHlup8v0VQs+1rlbT//kx4wjriFTPy4SVT8AkywXHMIakwbSdRu3xm7hNGD3K3nWE
	eAkA==
X-Gm-Message-State: AOAM5321/cy33Cyhtt4i1iWjeeHDNRez83yGjkG6aDzWXrAWc45UBh2v
	BS44u1rQbLjLjRQqV4Sl+yeCozLWrRI=
X-Google-Smtp-Source: ABdhPJwq++VINMzwgWS2dqkcTBOC216q6/XXNp3bdMSQMVoV3wVGTxIBezcyJ6gIter6PzXp6GpUqQ==
X-Received: by 2002:ac8:65c8:: with SMTP id t8mr5791432qto.201.1619807730876; 
	Fri, 30 Apr 2021 11:35:30 -0700 (PDT)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10]) by smtp.gmail.com with ESMTPSA id
	u64sm2126048qkc.127.2021.04.30.11.35.30 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Apr 2021 11:35:30 -0700 (PDT)
Subject: Re: Best Distro for Blind
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
	<6f3672de-8f76-5432-e89d-abc4f23b0dc9@slint.fr>
Message-ID: <b2df9adf-6409-7f5a-3597-46a555f3946a@gmail.com>
Date: Fri, 30 Apr 2021 14:35:31 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:56.0) Gecko/20100101
	Thunderbird/56.0
MIME-Version: 1.0
In-Reply-To: <6f3672de-8f76-5432-e89d-abc4f23b0dc9@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmsgeW91IGZvciB0aGUgcmVjb21tZW5kYXRpb24gYW5kIHRoZSByZXNvdXJjZSBsaW5rcy4g
SSBhbSBnb2luZyB0byAKZ2l2ZSBpdCBhIHRyeS4KCgpKb2huCgoKT24gNC8zMC8yMDIxIDI6MDMg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGVsbG8gSm9o
bgo+Cj4gU2xpbnQgbWVldHMgeW91ciByZXF1aXJlbWVudHMuCj4KPiBJdCB3b3JrcyB3ZWxsIG9u
IGEgVGhpbmtwYWQgWDIyMCBhbmQgaXMgZnVsbHkgYWNjZXNzaWJsZSB3aXRoIEJyYWlsbGUgYW5k
Cj4gc3BlZWNoIGZyb20gaW5zdGFsbGF0aW9uIHRvIHVzYWdlLCBpbiBncmFwaGljYWwgZW52aXJv
bm1lbnRzIGFzIGluIAo+IGNvbnNvbGUgbW9kZS4KPgo+IEknZCByZWNvbW1lbmQgeW91IHVzZSB0
aGVuICJBdXRvIiBtb2RlIG9mIGluc3RhbGxhdGlvbiwgdmVyeSAKPiBzdHJhaWdodGZvcndhcmQu
Cj4KPiBCeSBkZWZhdWx0IHlvdSdsbCBnZXQgTWF0ZSBhcyBkZXNrdG9wLgo+Cj4gU29mdHdhcmUg
Zm9yIGJyb3dzaW5nLCBlbWFpbCwgd29yZCBwcm9jZXNzaW5nIGFuZCBzcHJlYWRzaGVldHMgYXJl
IAo+IGluY2x1ZGVkLAo+IGFuZCBpbmRlZWQgc3NoIGlzIGF2YWlsYWJsZS4KPgo+IFRvIGtub3cg
bW9yZSwgc29tZSBsaW5rczoKPiBodHRwczovL3NsaW50LmZyCj4gaHR0cDovL3NsYWNrd2FyZS51
ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL1JFQURNRS5pbnN0YWxsYXRpb24KPiBodHRwOi8v
c2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82NC9zbGludC0xNC4yLjEvZG9jL0FjY2Vzc2liaWxpdHkv
QWNjZXNzaWJpbGl0eSAKPgo+Cj4gV2UgaGF2ZSBtYWlsaW5nIGxpc3QuIFRvIHJlZ2lzdGVyLCBq
dXN0IGVtYWlsIHNsaW50LXJlcXVlc3RAZnJlZWxpc3RzLm9yZwo+IHRoZSBzdWJqZWN0ICdzdWJz
Y3JpYmUnLCB0aGVuIGFuc3dlciB0aGUgZW1haWwgeW91IHdpbGwgcmVjZWl2ZS4KPgo+IFdlIGFy
ZSBhbHNvIG9uIElSQzogc2VydmVyIGlyYy5mcmVlbm9kZS5uZXQsIGNoYW5uZWwgI3NsaW50Cj4K
PiBDaGVlcnMsCj4gRGlkaWVyCj4gLS0tCj4gU2xpbnQgbWFpbnRhaW5lcgo+IGRpZGllcn5hdH5z
bGludH5kb3R+ZnIKPgo+Cj4gTGUgMzAvMDQvMjAyMSDDoCAxOToyMCwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBIZWxsbywKPj4KPj4gSSBhbSBhIHRv
dGFsbHkgYmxpbmQgcGVyc29uIGFuZCBhIExPTkcgdGltZSBXaW5kb3dzL0phd3MvTlZEQSB1c2Vy
LiBJIAo+PiBhbSB3b25kZXJpbmcgd2hhdCB3b3VsZCBiZSBhIHJlY29tbWVuZGF0aW9uIGZvciB0
aGUgYmVzdCBkaXN0cm8vR1VJIAo+PiBlbnZpcm9ubWVudCB0byBiZWdpbiB1c2luZz/CoCBJIHdv
dWxkIGxvdmUgdG8gYmUgYWJsZSB0byBtb3ZlIGF3YXkgCj4+IGZyb20gV2luZG93cyBhbmQgdXNl
IExpbnV4IGZ1bGwgdGltZSBmb3IgYnJvd3NpbmcsIGVtYWlsLCB3b3JkIAo+PiBwcm9jZXNzaW5n
IGFuZCBzcHJlYWRzaGVldHMuIEkgaGF2ZSBhIFRoaW5rcGFkIFgyMjAgdGhhdCBJIGNhbiB1c2Ug
Cj4+IGZvciBMaW51eC4gQWJvdXQgMTUgeWVhcnMgYWdvLCBJIHBsYXllZCBhcm91bmQgd2l0aCBW
ZW51eCwgYnV0IHRoYXQgCj4+IHByb2plY3Qgc2VlbXMgdG8gYmUgZG9ybWFudCBub3cuIEkgaGF2
ZSBhIFBpIDNCKyBydW5uaW5nIHNvbWUgaGFtIAo+PiByYWRpbyBzb2Z0d2FyZSBhbmQgSSBoYXZl
IHRvIFNTSCBpbnRvIGl0IG9jY2FzaW9uYWxseSBhbmQgcGVyZm9ybSAKPj4gc29tZSBjb21tYW5k
IGxpbmUgc3R1ZmYuIEZvciBkYWlseSB1c2FnZSwgSSB3YW50IGEgZnVsbCBHVUkgZW52aXJvbm1l
bnQuCj4+Cj4+Cj4+IFRoYW5rcyBpbiBhZHZhbmNlIGZvciBhbnkgc3VnZ2VzdGlvbnMuCj4+Cj4+
Cj4+IEpvaG4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAoKLS0gCkpvaG4gIFdYMUpNICAocHJldmlvdXNseSBLQTFKRkopCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

