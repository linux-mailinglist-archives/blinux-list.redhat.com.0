Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1D0497537
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 20:24:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642965852;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4IFomm9mmo5mWH4DsBSh18RyVigqypBC51JQt7Rl0Q0=;
	b=hr7szqIDsphYbTDoI7FLDXAKmOjw4Ft/lRMR0ZHGpVTeBtfPDm2TVks/M8S1MQZvl90JCE
	R+rTDh4cKC6fIPRbE9m/+BJs4GIwM++Gei3xEA0TNWFAdlyS2/ogDP7vboIQhfuSeRCSen
	byx2O6ZEpIA9k1VrzzH/MasMcXa/TAc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-531-__s5QeulN_Oa0dYKervPFg-1; Sun, 23 Jan 2022 14:24:08 -0500
X-MC-Unique: __s5QeulN_Oa0dYKervPFg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3528C2F48;
	Sun, 23 Jan 2022 19:24:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0513A60843;
	Sun, 23 Jan 2022 19:24:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B8EB14BB7C;
	Sun, 23 Jan 2022 19:23:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NJJ1DW027541 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 14:19:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E8B2B40C1242; Sun, 23 Jan 2022 19:19:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3962400E12B
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 19:19:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB0C18011A5
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 19:19:00 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-48-fGaNtW4wNvG1OTO4B6oyuA-1; Sun, 23 Jan 2022 14:18:59 -0500
X-MC-Unique: fGaNtW4wNvG1OTO4B6oyuA-1
Received: by mail-qk1-f181.google.com with SMTP id s12so17417647qkg.6
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 11:18:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=Z2I0JlQwc3qBKvLq2bUSkel/p+GFlx3ByYvTaWVY1ng=;
	b=Z+mDTpMypc8uC+y5nU951yeENB0ERH502LNtzySkTf8ROoDg3ZzJDzHXxp1J223Q3n
	+jhbdGycg58Y/cvfkRi5qBQu99o8aHdqayzBVOnR8XL6BgRk+tlL/DUULffTqQe+3s3V
	m0eakNczAE4Rg260IDynGCEf3Fz7ANtVgUwfAveq4G33IBP9xJMZDhuHR+r7d1yt+yNO
	XGtAbWwEJeSgswolMB0rdkopyyT416FnVEIM+WU08icfKU+MGjE/vCKigCauYEx/hnea
	VzJFq8SaBdppiGpb+YixPeqbg4QFK99F7mamk5U5lFyDVatxNfAGQKlF1aAJ1ZTgI5yD
	2dqw==
X-Gm-Message-State: AOAM530XHTpC6vA1HzzxtbHdS+mdSgu8UD4dx1Qupcxeih6jtHvs3k4D
	wi4ip7Tl+OiABZKv3SvT4hDBESgmfQx2DA==
X-Google-Smtp-Source: ABdhPJyn6Is3vXVsAsZz8y3JBL32Agg+qYktLMt9O1ozfK438GQDosdADSKWvQ/RHC5oG5a3AjN34Q==
X-Received: by 2002:a05:620a:122c:: with SMTP id
	v12mr462871qkj.466.1642965538390; 
	Sun, 23 Jan 2022 11:18:58 -0800 (PST)
Received: from ElBraille
	(2603-6011-ba01-8300-b497-6879-99b9-8936.res6.spectrum.com.
	[2603:6011:ba01:8300:b497:6879:99b9:8936])
	by smtp.gmail.com with ESMTPSA id
	u63sm6175754qkh.43.2022.01.23.11.18.57 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jan 2022 11:18:58 -0800 (PST)
To: <blinux-list@redhat.com>
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>	<469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
	<e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
In-Reply-To: <e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
Subject: RE: Favorite out-of-the-box accessible Linux laptops?
Date: Sun, 23 Jan 2022 14:18:57 -0500
Message-ID: <042701d8108e$11f92250$35eb66f0$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQHKaaMkAqhZ4ukrw0CIRV+VjxohbwH1qZBiASKp1LWsc4R3oA==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20NJJ1DW027541
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
Content-Language: en-us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T25lIG9mIHRoZSBwcm9ibGVtcyBpcyB0aGF0IG11c3QgbWFjaGluZXMgbm93IGFkYXlzIGhhdmUg
c2VjdXJlIGJvb3Qgd2hpY2ggdW5mb3J0aW9uZXRseSwgdGhpcyBhbGltaW5hdGVzIHdoYXQgTGlu
dXggZGlzdHJvcyB5b3UgY2FuIGluc3RhbGwuICBGb3IgZXhhbXBsZSwgSSBoYXZlIGFuIG9sZGVy
IGhwIG5vdGVib29rIHdoaWNoIGF0IHRoZSBtb21lbnQgaGFzIGJvdGggRGViaWFuIGFuZCB1YnVu
dHUgb24gdGhlIHNhbWUgZHJpdmUuICBPdGhlciAgZGlzdHJvcyBzdWNoIGFzIGFyY2gsIGFuZCBz
bGludCB3aWxsIG5vdCBldmVuIGJvb3QgIHdpdGggc2VjdXJlIGJvb3QgZW5hYmxlZCBhbmQgZGlz
YWJsaW5nIHRoaXMgY2FuIG5vdCBiZSBkb25lIHdpdGhvdXQgc2l0ZWQgaGVscC4gIFRoYW5rcy4K
Ck1hdHRoZXcKCgoKLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KRnJvbTogYmxpbnV4LWxpc3Qt
Ym91bmNlc0ByZWRoYXQuY29tIDxibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+IE9uIEJl
aGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uClNlbnQ6IFN1bmRheSwg
SmFudWFyeSAyMywgMjAyMiA0OjE1IEFNClRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgpTdWJqZWN0OiBSZTogRmF2b3JpdGUgb3V0
LW9mLXRoZS1ib3ggYWNjZXNzaWJsZSBMaW51eCBsYXB0b3BzPwoKSSBoYXZlIG5ldmVyIGJvdWdo
dCBhIGxhcHRvcCB0aGF0IGNvbWVzIHdpdGggTGludXggcHJlIGluc3RhbGxlZCwgd2h5IApzaG91
bGQgSSwgd2hlbiBJIGNhbiBqdXN0IGRvIGl0IG15c2VsZiwgYW5kIHRoZW4gaW5zdGFsbCBldmVy
eXRoaW5nIEkgCndhbnQvbmVlZCBpbiBhIHN5c3RlbS4KCgpNeSBmYXZvcml0ZSBtYWNoaW5lIHRo
dXMgZmFyIHdvdWxkIGJlIG15IEh1YXdlaSBNYXRlQm9vayBEMTUuIEl0IGhhcyBhIAp2ZXJ5IG5p
Y2UsIGdyYXRlLCBiaWcga2V5Ym9hcmQsIHllcywgYWxzbyBhIHJhdGhlciBsYXJnZSBzY3JlZW4s
IGJ1dCAKd2hhdCBjYW4geW91IGRvPyBUaGUgYmF0dGVyeSBpcyBhbHNvIHJlYXNvbmFibGUuCgpX
YXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IGZyb20gdGhlIFNsaW50IG1hY2hp
bmUgdXNpbmcgVGh1bmRlcmJpcmQKCk9uIDIwMjIvMDEvMjMgMDA6MTIsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gV2VsbCwKPiBGb3IgbWUgaXQgd2FzIGFsd2F5
cyBlaXRoZXIgdGhlIEhQIFBhdmlsbGlvbiBvciB0aGUgRGVsbCBTYXRlbGxpdGUgbW9kZWxzLiBS
ZWxhdGl2ZWx5IGVhc3kgdG8gdXNlLCBjb21lIHdpdGggc3RhbmRhcmQgb3B0aW9ucyBhbmQgYSBu
aWNlIGJpZyBrZXlib2FyZC4gWWVzLCBJIGhhdmUgbGFyZ2UgaGFuZHMuIEFuZCB5ZXMsIGxpa2Ug
eW91LCBzY3JlZW4gc2l6ZSBpc27igJl0IGltcG9ydGFudCB0byBtZS4gU3RpbGwsIHdpdGggYSBs
YXJnZXIgc2NyZWVuIHRoZXJlIGlzIHZpZGVvIGNhcGFiaWxpdHkgdGhhdCBjYW4gYmUgcmV0YXNr
ZWQgZWFzaWx5IGVub3VnaC4gQWxzbywgc2luY2UgbW9zdCBsYXB0b3BzIG9mdGVuIHVzZSBzY3Jl
ZW4gc2l6ZSBhcyBhIGRlcGVuZGluZyBmYWN0b3IsIGEgbGFyZ2VyIG9uZSB3aWxsIGhhdmUgdGhl
IGFkdmFudGFnZSBvZiBhIGxhcmdlciBrZXlib2FyZC4KPgo+IC1FcmljCj4KPgo+PiBPbiBKYW4g
MjIsIDIwMjIsIGF0IDE6MTYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBJIGFtIGxvb2tpbmcgZm9yIGEg
TGludXggbWFjaGluZSB0byB1c2UgaW4gZ3JhZHVhdGUgQ1MgY291cnNlcy4gSSBwcm9iYWJseQo+
PiB3YW50IFVidW50dSBvciBhbm90aGVyIGNvbW1vbiBkaXN0cm8gdGhhdCBjb21lcyB3aXRoIHRo
ZSBzY3JlZW4gcmVhZGVyIChJCj4+IGFzc3VtZSBPcmNhKSBhbmQgb3RoZXIgYTExeSBzdHVmZiBh
bHJlYWR5IGluc3RhbGxlZC4gSSBsaWtlIHNtYWxsLCBsaWdodAo+PiBsYXB0b3BzIChzaW5jZSBJ
IGRvbid0IHVzZSB0aGUgc2NyZWVuKSB0aGF0IGhhdmUgZGVjZW50IG1lbW9yeSBhbmQgYmF0dGVy
eQo+PiBsaWZlLiBXaGljaCBtYWNoaW5lcyBhcmUgeW91ciBmYXZvcml0ZXMuCj4+Cj4+IFRoYW5r
cyBmb3IgdGhlIHRpcCBvbiBWbVdhcmUgdGhlIG90aGVyIGRheSwgQlRXLgo+Pgo+PiBBbWFuZGFb
MF0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

