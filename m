Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F74C48FDB5
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 16:55:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642348505;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1V19uP+pZVDueu3InmsDDPoF7bgzKghpt7yHb9tqP3I=;
	b=h0PwP6LC92pvkghKMOYTQqxQZ+99UaJexcXDs5ipzOf3LkgupXHS42IlVN8IcJ6hYY8qc2
	d8uS/GIgwjMmQtz0eSd04LQxncAT/xxzNA4FEE6RlWdl8asKa6hA3dIG/oc9MmefUIPdco
	Ezoszlsh9wmRUbNxSijWW/fQJacPp5k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-177-l4M3U7hCPQG-Uv3b7-lubw-1; Sun, 16 Jan 2022 10:55:01 -0500
X-MC-Unique: l4M3U7hCPQG-Uv3b7-lubw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80B8A5203;
	Sun, 16 Jan 2022 15:54:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4165984A36;
	Sun, 16 Jan 2022 15:54:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B6584CA93;
	Sun, 16 Jan 2022 15:54:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GFsdB7028913 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 10:54:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AF5382144B21; Sun, 16 Jan 2022 15:54:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A949E2144B20
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 15:54:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77AD1101A52D
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 15:54:34 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-471--jEMipaRNUWu3CNsfYo3Sg-1; Sun, 16 Jan 2022 10:54:32 -0500
X-MC-Unique: -jEMipaRNUWu3CNsfYo3Sg-1
Received: by mail-wm1-f50.google.com with SMTP id w26so15501945wmi.0
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 07:54:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=TRDTDbT+6+xmQ+55p5Q1rKq7C2vQM0+ycOINtX7WWO0=;
	b=qd7CML2lUI0te/TWm/8KA/YAYA9K+4KGTlW+p380JvyJGgfiMkVXjZis4jhT40I7mi
	Wi350DB1f4Hr5JtwgY/6tlCjRLyb5KVvqstbEPrT00s+TvtYGkctNYr5FNkF5rNYalLM
	l/6El7ORtVSfoAgMQygaN8P4h9g8mXJHossGdrVHN7Ni9c4zGDcA8EdasvI/cjuwNXvI
	cCHmq3Y681oWCoFYacDlnA3J79xzhtroYB3ovILUntpJZ8cNWintEqouSd8r/co0Duf7
	gG13PvJBeWNMIl0WNBmh7v2fowAKbuZB7aGTTwrjjgp0SyF5OQ1TEAqF8Tjk/2HWDWkC
	mzUQ==
X-Gm-Message-State: AOAM531x+B98l/66kHURrFnX5bb+UdxD3Q1tFnhrMijrCAVNlFGZocO7
	8UtqP3i/EAyQ4vQhvITUs9AT2ZiG3bg=
X-Google-Smtp-Source: ABdhPJzjW/pu8QuKZ+S/IF1zanyVZPlEnstSCgj90XDE7H/INOquVTF6pPueTB14W00riRs2k8pPFg==
X-Received: by 2002:a5d:518e:: with SMTP id k14mr16876484wrv.75.1642348470993; 
	Sun, 16 Jan 2022 07:54:30 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.181.219])
	by smtp.gmail.com with ESMTPSA id
	a3sm13609809wri.89.2022.01.16.07.54.29 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 07:54:30 -0800 (PST)
Subject: Re: Getting Started with linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
Message-ID: <574571f2-a341-c700-d94a-415f76bc936e@gmail.com>
Date: Sun, 16 Jan 2022 17:54:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSSBwZXJzb25hbGx5IGRvIG5vdCBsaWtlIHZhbmlsbGEgVWJ1bnR1LCBzaW1wbHkgYmVj
YXVzZSB0aGUgR25vbWUgCmRlc2t0b3AgZG9lcyBub3QgbWFrZSBhbnkgc2VuY2UgdG8gbWUgYXQg
YWxsLiBJZiBpdCB3YXMgbWUsIGFuZCBhdCBvbmUgCnBvaW50LCBsb25nLCBsb25nIGFnbywgaXQg
d2FzLCBJJ2QgZG93bmxvYWQgVWJ1bnR1IE1hdGUsIHNpbXBseSBiZWNhdXNlIAp0aGUgZGVza3Rv
cCBpcyBhIGhlbGwgb2YgYSBsb3Qgc2ltcGxlciB0byBnZXQgdXNlIHRvLCBhbmQgYWxzbyBhIGxv
dCAKbW9yZSBsaWtlIHRoZSB0cmFkaXRpb25hbCBXaW5kb3dzIERlc2t0b3AgaW4gdGhlIHNlbmNl
IHRoYXQgeW91IGNhbiwgaWYgCnlvdSBzbyB3aXNoLCBwdXQgYWxsIHlvdXIgY3JhcCBvbiBpdCwg
dW5saWtlIEdub21lLgoKV2FybSByZWdhcmRzLAoKQnJhbmR0IFN0ZWVua2FtcAoKU2VudCBmcm9t
IHRoZSBTbGludCBtYWNoaW5lIHVzaW5nIFRodW5kZXJiaXJkCgpPbiAyMDIyLzAxLzE2IDE3OjE5
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IFdlbGwsIGl0IHNv
dW5kcyBsaWtlIHlvdSdyZSB0ZWxsaW5nIG1lIHRvIHJ1biBsaW51eCB1bmRlciB3aW5kb3dzPyAK
PiBUaGF0IGlzbid0IHdoYXQgSSBoYWQgaW4gbWluZC7CoCBIZXJlJ3Mgd2hhdCBJJ3ZlIGxlYXJu
ZWQgdGh1cyBmYXI6Cj4gSSBuZWVkIHRvIGRvd25sb2FkIGEgbGludXggT1M7IHRoZW4gbWFrZSBh
IGJvb3RhYmxlIG1lZGlhIGFuZCBpbnN0YWxsIAo+IHRoZSBsaW51eCBJU08gdG8gaXQuCj4KPiBX
ZWxsLCBJIGRpZCB0aGF0Ogo+IGRvd25sb2FkZWQgdWJ1bnR1LTIwLjA0LjMtZGVza3RvcC1hbWQ2
NC5pc28KPiBhbmQgKGZvciBmbGFzaGluZyBpdCB0byB0aGUgdGh1bWIgZHJpdmUpIGJhbGVuYUV0
Y2hlci1Qb3J0YWJsZS0xLjcuMy5leGUKPiBtYWRlIGEgYm9vdGFibGUgdGh1bWIgZHJpdmUgYW5k
IGluc3RhbGxlZCB1YnVudHUgb24gaXQuCj4KPgo+IE5vdyBJIG5lZWQgdG8gbGVhcm4gaG93IHRv
IGluc3RhbGwgdWJ1bnR1IGZyb20gdGhlIHRodW1iIGRyaXZlLsKgIEkgCj4gbXVzdCBzZWFyY2gg
Zm9yIGluc3RydWN0aW9ucyB0byBnbyBvbiBmcm9tIGhlcmUuCj4KPiBUaGFua3MuCj4gSG93YXJk
Cj4KPgo+IE9uIDEvMTUvMjAyMiA1OjUzIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+PiBVYnVudHUgb3IgRmVkb3JhIGNvdWxkIGRvIHRoYXQgZm9yIHlvdS4g
YWx0LXdpbmRvd3MtcyB0b2dnbGVzIHNwZWVjaCBvbgo+PiBhbmQgb2ZmIGFuZCB5b3Ugd2FudCB0
byBjaG9vc2UgdHJ5IHVidW50dSBvciB0cnkgZmVkb3JhIGJ1dHRvbnMgb24gdGhlCj4+IGRlc2t0
b3Agc2NyZWVuLsKgIERlc2t0b3Agc2NyZWVuIGlzIHdpbmRvd3MtZCBvbmNlIHN5c3RlbSBib290
cyBhbmQgeW91Cj4+IGhhdmUgc3BlZWNoLgo+Pgo+Pgo+PiBPbiBTYXQsIDE1IEphbiAyMDIyLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pgo+Pj4gSGVsbG8gYWxs
LAo+Pj4KPj4+IEkndmUgYmVlbiB3YW50aW5nIHRvIHRyeSBvdXQgbGludXggYnV0IGhhdmVuJ3Qg
d2FudGVkIHRvIGdpdmUgdXAgb3IgCj4+PiBtZXNzIHVwCj4+PiBhbnkgb2YgbXkgd29ya2luZyB3
aW5kb3dzIHN5c3RlbXMuwqAgV291bGQgaXQgYmUgcG9zc2libGUgdG8gaW5zdGFsbCAKPj4+IHNv
bWUKPj4+IHZlcnNpb24gb2YgbGludXggb24gYSBDRCBvciBhIERWRDsgdGhlbiBqdXN0IGJvb3Qg
YSBjb21wdXRlciBmcm9tIAo+Pj4gdGhhdCBkaXNrCj4+PiBieXBhc3Npbmcgd2luZG93cyBhbHRv
Z2V0aGVyP8KgIElmIHNvLCBJJ2QgaGF2ZSB0byBtYWtlIGl0IGVpdGhlciAKPj4+IHRhbGsgb3Ig
ZHJpdmUKPj4+IGEgQnJhaWxsZSBkaXNwbGF5Lgo+Pj4KPj4+IFdvbmRlciBpZiBhbnlvbmUgd291
bGQgaGF2ZSBhbnkgc3VnZ2VzdGlvbnM/wqAgVGhhbmsgeW91Lgo+Pj4KPj4+IEhvd2FyZAo+Pj4K
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

