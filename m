Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA8C440FE0
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 18:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635702248;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+7yYfJDP9sTn+LoxmsmhIb2Hymz2lLMjLiVCrsUwDxg=;
	b=Ax8UlkuO+Lkt68IKLXq5XU7lDnq8kxn6YlXp+1NaRC4M1xPkujekQQoZDVRUQS0LmwN1iD
	aGK7wUL0zolq5DIxlFRZmZVCp9dOXle6xrbATLTctkCh0yw3Pm/MiEJhxkg5l3CnAFzMIh
	/RsLCUhP5SyiqLbb3eOYmeAyzukUaek=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-u7cvG8uLN1KktJPRx_SM6Q-1; Sun, 31 Oct 2021 13:43:55 -0400
X-MC-Unique: u7cvG8uLN1KktJPRx_SM6Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D66A1006AA3;
	Sun, 31 Oct 2021 17:43:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B27C19C59;
	Sun, 31 Oct 2021 17:43:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4DE961800FE4;
	Sun, 31 Oct 2021 17:43:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VHhhj8016170 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 13:43:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ED19040C1252; Sun, 31 Oct 2021 17:43:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E859F401A972
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 17:43:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF0B38007B1
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 17:43:42 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
	[209.85.210.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-467-b-5f1r4sM3aZzbNYQ6Ub4Q-1; Sun, 31 Oct 2021 13:43:40 -0400
X-MC-Unique: b-5f1r4sM3aZzbNYQ6Ub4Q-1
Received: by mail-pf1-f175.google.com with SMTP id y20so3474843pfi.4
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 10:43:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=XF0XFqAhTwFqddXpGbwW5By5KJsgEEtrZDaDnVVYFsU=;
	b=VgqyqMuSL68kP78/560IEurhHMV+VlKlSb11fFsSlfK6CPfPfDKZS1Hz4FBh4MQZqA
	5Bu0f6yue8vKndJ2pzxxjDg9AAz4TNpjPLhA7lNq6A/pvQw0ZT7xjfyceKPpHOOS4GXv
	sFQa+rtpaPT1bXY1DPS1jtJfpGTgu78c/sK+rhvoaQSYYxzbsHD9eNLZ1AKAfNsbRlUL
	1mdeGBy0K05MgeEvLE9zOL1xJdG1srgSfw1+kYXSy61LQmLjYQMkWEaMcOEqwdfR9wnz
	NmRHOOEf1vqaYnYqo6H/NgZrbZf8UtPA2lF+eBWr/YfeXDWUulPyisQhkOaO2ZIGxz15
	Rw1A==
X-Gm-Message-State: AOAM5327WvXxfwP2Hj/rbdiNQRWxk/xEEo1ABboBKNqdzSLjZKUPZ5t9
	NwSPpfdKg5NRsiVvLjROQwg6uO1aEOKdAJnpwESdDATprmo=
X-Google-Smtp-Source: ABdhPJyokIRrKxpVO5ED2gA92xkELGJ/jXh7mUMZAJa06ViHCXLwutsZJxiFtDhYI1vGfIwYutrkUHL7WKTLRDv+1Qo=
X-Received: by 2002:a63:ef57:: with SMTP id c23mr17797106pgk.60.1635702218951; 
	Sun, 31 Oct 2021 10:43:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a11:52a:0:0:0:0 with HTTP; Sun, 31 Oct 2021 10:43:38
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.23.451.2110311320060.1691@panix1.panix.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<Pine.LNX.4.64.2110311235300.25914@server2.shellworld.net>
	<alpine.NEB.2.23.451.2110311320060.1691@panix1.panix.com>
Date: Sun, 31 Oct 2021 10:43:38 -0700
Message-ID: <CAM+Q2c5XwK1f7fW3cTg8vfObocK_DVgy__2h1YB-AfnWuNn7AQ@mail.gmail.com>
Subject: Re: Beginner's Guide To The Linux Terminal
To: blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19VHhhj8016170
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T3Igbm90LiBsZHAub3JnIHNheXM6ClNPUlJZIQpJZiB5b3UgYXJlIHRoZSBvd25lciBvZiB0aGlz
IHdlYnNpdGUsIHBsZWFzZSBjb250YWN0IHlvdXIgaG9zdGluZwpwcm92aWRlcjogd2VibWFzdGVy
QGxkcC5vcmcKSXQgaXMgcG9zc2libGUgeW91IGhhdmUgcmVhY2hlZCB0aGlzIHBhZ2UgYmVjYXVz
ZToKVGhlIElQIGFkZHJlc3MgaGFzIGNoYW5nZWQuClRoZSBJUCBhZGRyZXNzIGZvciB0aGlzIGRv
bWFpbiBtYXkgaGF2ZSBjaGFuZ2VkIHJlY2VudGx5LiBDaGVjayB5b3VyCkROUyBzZXR0aW5ncyB0
byB2ZXJpZnkgdGhhdCB0aGUgZG9tYWluIGlzIHNldCB1cCBjb3JyZWN0bHkuIEl0IG1heQp0YWtl
IDgtMjQgaG91cnMgZm9yIEROUyBjaGFuZ2VzIHRvIHByb3BhZ2F0ZS4gSXQgbWF5IGJlIHBvc3Np
YmxlIHRvCnJlc3RvcmUgYWNjZXNzIHRvIHRoaXMgc2l0ZSBieSBmb2xsb3dpbmcgdGhlc2UgaW5z
dHJ1Y3Rpb25zIGZvcgpjbGVhcmluZyB5b3VyIGRucyBjYWNoZS4KVGhlcmUgaGFzIGJlZW4gYSBz
ZXJ2ZXIgbWlzY29uZmlndXJhdGlvbi4KWW91IG11c3QgdmVyaWZ5IHRoYXQgeW91ciBob3N0aW5n
IHByb3ZpZGVyIGhhcyB0aGUgY29ycmVjdCBJUCBhZGRyZXNzCmNvbmZpZ3VyZWQgZm9yIHlvdXIg
QXBhY2hlIHNldHRpbmdzIGFuZCBETlMgcmVjb3Jkcy4gQSByZXN0YXJ0IG9mCkFwYWNoZSBtYXkg
YmUgcmVxdWlyZWQgZm9yIG5ldyBzZXR0aW5ncyB0byB0YWtlIGVmZmVjdC4KVGhlIHNpdGUgbWF5
IGhhdmUgbW92ZWQgdG8gYSBkaWZmZXJlbnQgc2VydmVyLgpUaGUgVVJMIGZvciB0aGlzIGRvbWFp
biBtYXkgaGF2ZSBjaGFuZ2VkIG9yIHRoZSBob3N0aW5nIHByb3ZpZGVyIG1heQpoYXZlIG1vdmVk
IHRoZSBhY2NvdW50IHRvIGEgZGlmZmVyZW50IHNlcnZlci4KY1BhbmVsLCBMLkwuQy4KQ29weXJp
Z2h0IMKpIDIwMjEgY1BhbmVsLCBMLkwuQy4KCk9uIDEwLzMxLzIxLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiBJIGZp
Z3VyZSBsZHAub3JnIGlzIG9uZSBnb29kIGV4dGVybmFsIHJlc291cmNlIHRob3VnaCB5b3VyIG1p
bGVhZ2Ugd2lsbAo+IHZhcnkuCj4KPgo+IE9uIFN1biwgMzEgT2N0IDIwMjEsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gVGhhdCBtYXkgYmUgYSBmaW5lIHJl
c291cmNlIGZvciB0aG9zZSB3aG8gY2FuIHVzZSBZb3VUdWJlLgo+PiB3aGF0IGhhcyBhbHdheXMg
Y29uY2VybmVkIG1lIGFib3V0IExpbnV4IHRob3VnaCBpcyB3aGF0IHNlZW1zIHRvIGJlIGEgbGFj
awo+PiBvZgo+PiBleHRlcm5hbCBzb2xpZCByZXNvdXJjZXMgcHJvdmlkaW5nIHN1Y2ggY29udGVu
dC4KPj4gWW91VHViZSBnZXRzIGxlc3MgaW5jbHVzaXZlIGZvciBsb3dlciBncmFwaGljcyB1c2Vy
cyBhbGwgdGhlIHRpbWUuCj4+IEFuZCBub3QgZXZlcnlvbmUgbGVhcm5zIHdlbGwgZnJvbSB2aWRl
b3MuCj4+Cj4+Cj4+Cj4+IE9uIFN1biwgMzEgT2N0IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Cj4+ID4gSGksCj4+ID4gRm9yIHRoZSBuZXcgTGludXgg
dXNlcnMgc3VjaCBhcyBteXNlbGYsCj4+ID4gSSBmb3VuZCB0aGlzIG9uIFlvdXR1YmUuCj4+ID4g
SSBsZWFybmVkIHRoYXQgeW91IGNhbiBvcGVuIHRoZSB0ZXJtaW5hbCB3aXRoCj4+ID4gY3RybCth
bHQrdAo+PiA+IENoZWNrb3V0IHRoaXMgdmlkZW8uCj4+ID4gaHR0cHM6Ly95b3V0dS5iZS9zM2lp
NDhxWUJ4QQo+PiA+Cj4+ID4KPj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiA+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+ID4KPj4gPgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgoKCi0tIApTdWJzY3JpYmUgdG8gYSBXb3JkUHJlc3Mg
Zm9yIE5ld2JpZXMgTWFpbGluZyBMaXN0IGJ5IHNlbmRpbmcgYSBtZXNzYWdlIHRvOgp3cDRuZXdi
cy1yZXF1ZXN0QGZyZWVsaXN0cy5vcmcgd2l0aCAnc3Vic2NyaWJlJyBpbiB0aGUgU3ViamVjdCBm
aWVsZCBPUiBieQp2aXNpdGluZyB0aGUgbGlzdCBwYWdlIGF0IGh0dHA6Ly93d3cuZnJlZWxpc3Rz
Lm9yZy9saXN0L3dwNG5ld2JzCiYgY2hlY2sgb3V0IG15IHNpdGVzIGF0IHd3dy5icmlnaHRzdGFy
c3dlYi5jb20gJiB3d3cubXlzaXRlc2JlZW5oYWNrZWQuY29tCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

