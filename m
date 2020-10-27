Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B251729A29C
	for <lists+blinux-list@lfdr.de>; Tue, 27 Oct 2020 03:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603765017;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P0aZqpAHzeRGSCXLUsdTT5+K1MZ+IoGq7VsyMbIB7G8=;
	b=hG9NefFnHYJu4URvuRHgy6Cqx2fRr6ygBdqkU4tfac1h4GCrPqzD2pnnHZLJP/Q/F/PcTt
	R9z7sugrP+HC5SOdHUvoVK7UsEQl1+sMHKCTfxr5gBi2IvDWsFw/k0hLR+T2Z78PUf+CIC
	Mui7ntM1SLpSgUQc9cJHKYzB1Ipbl1k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-351-i4fbyGQPNkK3DIVeWkgRAw-1; Mon, 26 Oct 2020 22:16:55 -0400
X-MC-Unique: i4fbyGQPNkK3DIVeWkgRAw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 772251868434;
	Tue, 27 Oct 2020 02:16:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4171A5C1C2;
	Tue, 27 Oct 2020 02:16:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A33B92F35;
	Tue, 27 Oct 2020 02:16:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09R20r0N005703 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Oct 2020 22:00:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CF3CA988EE; Tue, 27 Oct 2020 02:00:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C8A61988EA
	for <blinux-list@redhat.com>; Tue, 27 Oct 2020 02:00:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 836D9858296
	for <blinux-list@redhat.com>; Tue, 27 Oct 2020 02:00:51 +0000 (UTC)
Received: from p3plsmtpa06-02.prod.phx3.secureserver.net
	(p3plsmtpa06-02.prod.phx3.secureserver.net [173.201.192.103]) (Using
	TLS)
	by relay.mimecast.com with ESMTP id us-mta-99-shaOH-iYPwO3uIrQqKNRsw-1; 
	Mon, 26 Oct 2020 22:00:47 -0400
X-MC-Unique: shaOH-iYPwO3uIrQqKNRsw-1
Received: from [192.168.50.215] ([64.53.221.169]) by :SMTPAUTH: with ESMTPA
	id XEFnkcqDa4AMZXEFnkDGKm; Mon, 26 Oct 2020 18:58:28 -0700
X-CMAE-Analysis: v=2.4 cv=G8TZr/o5 c=1 sm=1 tr=0 ts=5f977ec4
	a=Y1aOP/Zr75kM3YTxrFwLWw==:117 a=Y1aOP/Zr75kM3YTxrFwLWw==:17
	a=IkcTkHD0fZMA:10 a=20KFwNOVAAAA:8 a=Fff6WIABesubeCBZmiAA:9
	a=QEXdDO2ut3YA:10
X-SECURESERVER-ACCT: cstrobel@crosslink.net
Subject: Re: Working in a WS with jaws
To: blinux-list@redhat.com
References: <07C9A138-5900-4138-9663-B659A1DC7D74.ref@yahoo.com>
	<07C9A138-5900-4138-9663-B659A1DC7D74@yahoo.com>
Message-ID: <5c169b90-14b6-62cf-f898-79fc149eee6b@crosslink.net>
Date: Mon, 26 Oct 2020 21:58:27 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <07C9A138-5900-4138-9663-B659A1DC7D74@yahoo.com>
X-CMAE-Envelope: MS4xfHkJrMU7L7sqH8/fX5pUJ8klt1ZQgbaUtmucPWwED6dEsdo5zdpbIqs0ZYl3MCW1/cLiqJeUbCv4Hx3Lzqe1Ly+GwXxCwgBl4XMaoazbaC79RXHSyLiW
	CABoYkhnkC1qeQyPzhE3TpnhzADif9kOGQD5e21jCXkzGaK4p3xFRVVMg/Gc1yZ7WYZdZ36sLtQ+jyXMm0gT4B6OaI0szx3H9ic=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

IMKgwqDCoCBJbiBnZW5lcmFsIHRyeSBtYXhpbWl6aW5nIHRoZSB3aW5kb3cgb3IgbWFraW5nIHRo
ZSBmb250IHNtYWxsZXIuwqAgCllvdSBjYW4gYWxzbyBjaGFuZ2UgdGhlIG9wdGlvbnMgZm9yIGhv
dyB0aGUgQnJhaWxsZSBkaXNwbGF5IGZvbGxvd3MgdGhlIApjdXJzb3IsIHN1Y2ggYXMgZml4ZWQg
cGFubmluZy4KCgpPbiAxMC8yNi8yMDIwIDc6MjEgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4gSGVsbG8sIEkgYW0gd29ya2luZyB3aXRoIGFuIEVDMiBpbnN0
YW5jZSBpbiBhIFdTIGFuZCBpbiB0aGUgdGVybWluYWwgamF3cyB3aWxsIG5vdCByZWFkIHRoZSBl
bnRpcmUuIFRlcm1pbmFsLiBUZXJtaW5hbCBvbiBteSBicmFpbGxlIGRpc3BsYXkuIFRlcm1pbmFs
IG9uIG15IGJyYWlsbGUgZGlzcGxheSBhbmQgSSB3YXMgd29uZGVyaW5nIGlmIHRoZXJlIGlzIGFu
eSBwb3NzaWJsZSB3YXkuIFRlcm1pbmFsIG9uIG15IGJyYWlsbGUgZGlzcGxheSBhbmQgSSB3YXMg
d29uZGVyaW5nIGlmIHRoZXJlIGlzIGFueSBwb3NzaWJsZSB3YXkgdG8gZG8gdGhpcy4gVGVybWlu
YWwgb24gbXkgYnJhaWxsZSBkaXNwbGF5IGFuZCBJIHdhcyB3b25kZXJpbmcgaWYgdGhlcmUgaXMg
YW55IHBvc3NpYmxlIHdheSB0byBkbyB0aGlzPy4gVGVybWluYWwgb24gbXkgYnJhaWxsZSBkaXNw
bGF5IGFuZCBJIHdhcyB3b25kZXJpbmcgaWYgdGhlcmUgaXMgYW55IHBvc3NpYmxlIHdheSB0byBk
byB0aGlzPwo+IEFueSBoZWxwIHdvdWxkIGJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQuCj4gVGhhbmtz
LAo+Cj4gQXNobGV5IEJyZWdlcgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

