Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E34853FD043
	for <lists+blinux-list@lfdr.de>; Wed,  1 Sep 2021 02:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630455568;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Zl3AhPJOkWRmlYQCvITo12bqfzMcKVZdqfaRoO8Dw3w=;
	b=iIPQCv3+3GidIHSfO0JiVr9lRaq5JMeY9zMeWGh3+GT4slS5a9IrvJIjp+znjBoQazNATP
	NeR9o7iiLVuTpqfgYnbgBHYXfK8rxIsMyYZKv1BAAvH18BoJ+H8P6x/xwu0dtVeViYGj1a
	ZYhYBLCOHHmjzbwFiCrerEZURp/R23w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-505-TDopSjyOOcKDjXcPa5ICxg-1; Tue, 31 Aug 2021 20:19:27 -0400
X-MC-Unique: TDopSjyOOcKDjXcPa5ICxg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 030B88CC78A;
	Wed,  1 Sep 2021 00:19:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 964366060F;
	Wed,  1 Sep 2021 00:19:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E46AA181A2A5;
	Wed,  1 Sep 2021 00:19:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1810HHr7001201 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 31 Aug 2021 20:17:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4F35F2064010; Wed,  1 Sep 2021 00:17:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 450122068FF0
	for <blinux-list@redhat.com>; Wed,  1 Sep 2021 00:17:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6DF60800B24
	for <blinux-list@redhat.com>; Wed,  1 Sep 2021 00:17:12 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-398-IfqJOIaGPAyONeG-sP3D-Q-1; Tue, 31 Aug 2021 20:17:09 -0400
X-MC-Unique: IfqJOIaGPAyONeG-sP3D-Q-1
Received: by mail-qt1-f176.google.com with SMTP id c19so1177357qte.7
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 17:17:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=9xAvtFAMZZjcvSrDPwr62U4GxpcUKieCWLJ/932i+m8=;
	b=FkUZWbVcYVe+CQYfHnR8nMHHGxtRb9c3RleMWvlF3shuJgcmysrr2yFw5oO6yfNqXk
	OAIf2JchAAdp4iDBjz85zG5uqv44W7NHE6ioX0MoF0a65V6IRC6IlwfjYqf5W8JfZKCE
	+KFBa7PXP48AyHpWb5JjM/z9/CPiWSD38lDhvhXhsssQxpcqRbmroJ/gZpJhzwvFH5/x
	7eBMGQO21wneSL0W44xL7fY7QTol7MYyfZKTZqlQGYzZT7fLf/ec3r3y/S7Wvy69Xaq5
	/xOhwvm8y6JRuRzYuC2Che09r7xUMb5BO4lSOFmdy7BsG8fPoyvCxNIWDcaY6KNBFy6C
	Gs+g==
X-Gm-Message-State: AOAM531sSWN3Y20obs5o30cBH2iPuKwhruQlOexDfY/wCiw60h/KnLe1
	SNA+M4yjQlCw1BUW311sjypucVAlm0jvgQ==
X-Google-Smtp-Source: ABdhPJww/r9ZMpihl84DYxE7HtTpBHk+ClQ507Rlwl12lGH7G1J79JrPAoL09wmsflFxol09sQHNAQ==
X-Received: by 2002:a05:622a:356:: with SMTP id
	r22mr5245147qtw.161.1630455428066; 
	Tue, 31 Aug 2021 17:17:08 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::c275])
	by smtp.gmail.com with ESMTPSA id
	g1sm14770064qkd.89.2021.08.31.17.17.07 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 31 Aug 2021 17:17:07 -0700 (PDT)
Subject: Re: blind-arch findings
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2108311320240.4235@panix1.panix.com>
	<601917c3-21b1-b0c3-d375-925260efb669@gmail.com>
Message-ID: <576ba3b4-c113-0c2e-1931-c8e4eabf4204@gmail.com>
Date: Tue, 31 Aug 2021 20:17:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <601917c3-21b1-b0c3-d375-925260efb669@gmail.com>
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

SG93IGNhbiB5b3UgdGVsbCwgZm9yIGEgZ2l2ZW4gZHJpdmUsIHdoZXRoZXIgaXQgaXMgc2F0YSBv
ciBudm1lPyBJIGp1c3QgCmxpc3RlbmVkIHRvIHRoZSB5b3V0dWJlIHdhbGstdGhyb3VnaCwgYW5k
IG1heSB3YW50IHRvIHRyeSB0aGlzIG9uIGJhcmUgCm1ldGFsLgoKCgpUaGFua3MsCgoKCkRhdmXC
oCBILgoKCgoKU2VudCBmcm9tIFNsaW50IEdOVS9MaW51eC4gIGh0dHBzOi8vc2xpbnQuZnIvZG9j
L0hhbmRCb29rLmh0bWwgZm9yIGluZm8KCk9uIDgvMzEvMjEgNTozMiBQTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSwKPgo+IEFsc28sIGJ5IGRlZmF1bHQg
aXQgdXNlcyB0aGUgbHRzIGtpcm5lbCBhbmQgbm90IHRoZSBsYXRlc3Qga2VybmVsLsKgIEkgCj4g
ZG9uJ3QgdGhpbmsgdGhlcmUgaXMgYSB3YXkgdG8gZml4IHRoaXMuwqAgSSB0aGluayB0aGVyZSBz
aG91bGQgYmUgYSB3YXkgCj4gdG8gY2h1c2Ugd2hpY2gga2VybmVsIHlvdSB3YW50LCBidXQgZWl0
aGVyIHdheSBpSXQgSSB0aGluayBpdCBpcyBncmVhdCAKPiBmb3Igc29vbWVvbmUgd2hvbyBpcyBn
ZXR0aW5nIHN0YXJ0ZWQsIGJ1dCB5b3UgY2FuIGdldCBhcm91bmQgdGhpcyAKPiBkcml2ZSBzaXpl
IHByb2JsZW0gYnkgbWFudWFsbHkgY3JlYXR0aW5nIHlvdXIgcGFydGl0aW9ucyBpZiB5b3Uga25v
dyAKPiB3aGF0IHlvdSBhcmUgZG9pbmcsIGJ1dCBJIHRoaW5rIHlvdSBzaG91bGQgYndlIGFibGUg
dG8ganVzdCB1c2UgdGhlIAo+IHJlbWFpbmluZyBzcGFjZSBieSBkZWZhdWx0Lgo+Cj4gTWF0dGhl
dwo+Cj4KPgo+IE9uIFR1ZSwgMzEgQXVnIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4KPj4gSXQgY2FuJ3QgZG8gYW4gaW5zdGFsbCBmb3IgYSBjb21tYW5k
IGxpbmUgc28gaXQgaXMgbmVjZXNzYXJ5IHRvIGNob29zZSBhCj4+IGRlc2t0b3AuCj4+IFNldmVy
YWwgd2FybmluZ3MgZ2V0IHRocm93biBieSB0aGUgc2NyaXB0IGJ1dCB0aGUgc2NyaXB0IGNvbnRp
bnVlcyB0bwo+PiB3b3JrLgo+PiBJIHRoaW5rIGlmIEkgZG8gdGhpcyBhZ2FpbiBhbmQgcGljayBh
IGRlc2t0b3AgdGhlIGluc3RhbGwgd2lsbCB3b3JrCj4+IGNvbXBsZXRlbHkuCj4+IFBhcnRpdGlv
bnMgYXJlIG1hZGUgc21hbGwgc2l6ZXMgYW5kIHRoaXMgaXMgb24gYSBkaXNrIHdpdGggMjQwRyBv
ZiAKPj4gc3BhY2UuCj4+IE1heWJlIHRoYXQgY291bGQgYmUgaW1wcm92ZWQgc28gbW9yZSBvZiB0
aGUgZGlzayBnZXRzIHVzZWQgYnkgCj4+IHBhcnRpdGlvbnMuCj4+IE5vIG9wdGlvbiB0byBjcmVh
dGUgYW5kIHVzZSBhIHN3YXAgZmlsZSByYXRoZXIgdGhhbiBhIHN3YXAgcGFydGl0aW9uIGlzCj4+
IGF2YWlsYWJsZSB5ZXQuCj4+IFRoZSBzY3JpcHQgY291bGQgcHJvYmFibHkgaW5zdGFsbCBidWRn
aWUgYXMgYSBkZXNrdG9wIGNob2ljZSBpZiB3b3JrZWQuCj4+IFdoZW4gSSBpbnN0YWxsZWQgc3R1
ZmYgSSBwdXQgeG9yZyBvbiB0aGUgc3lzdGVtIGFsb25nIHdpdGggZm9udHMgYW5kIAo+PiBtYXli
ZQo+PiBpZiBJIGhhZCBsZWZ0IGRlc2t0b3AgYW5kIHhvcmcgb2ZmIHRoaXMgbWlnaHQgaGF2ZSBj
b21lIHVwIGluIGNvbW1hbmQgCj4+IGxpbmUKPj4gbW9kZS7CoCBJJ2xsIGNoZWNrIHRoYXQgb3V0
IHRpbWUgcGVybWl0dGluZy4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pgo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

