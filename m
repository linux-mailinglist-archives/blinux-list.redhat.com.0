Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C5120453FC8
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 05:58:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637125123;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E7BtwsvAc2vMrhYLQwoTWTipk3N8t58GUx8wDuuX+44=;
	b=hhk5k2OTWXS/OEq61FNkI9ELvdnx0BSYRtoW/Eik2F6QHl4WIPKpu4FemINHAF+vfVMEvt
	8evhw3XWCjAE3aHwfOpwJUQ6oMiHwhtqJ9jr3tCZzMTonqzw7XBW1dhS1rLX+Uig/D2ygz
	U/isIUmJ8vWz+NWrJclPuDjUa+1RBYM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-101-5-fwEYvhMh63tKaoJgThjA-1; Tue, 16 Nov 2021 23:58:40 -0500
X-MC-Unique: 5-fwEYvhMh63tKaoJgThjA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 540221922960;
	Wed, 17 Nov 2021 04:58:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEDCD5BAE5;
	Wed, 17 Nov 2021 04:58:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C658A1806D03;
	Wed, 17 Nov 2021 04:58:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AH4vqiD013036 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 23:57:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CE94651DD; Wed, 17 Nov 2021 04:57:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C935351DC
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 04:57:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB823811E7A
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 04:57:48 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-24-lcUT1JrnNv6o4kULg5stoA-1; Tue, 16 Nov 2021 23:57:47 -0500
X-MC-Unique: lcUT1JrnNv6o4kULg5stoA-1
Received: by mail-qk1-f175.google.com with SMTP id t83so1297062qke.8
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 20:57:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=s5S+ejI+UkS6TfexGLaq3zYbohsqwPe+vDYuH4YvW0I=;
	b=BAjnhB0MaymNMnXBsJqJcDLIlZWaUJO5z08doX3SGuqcUkr9uVPEsb22mAiLZJi7SN
	MgtYkD1RjVLMaFuJ2X5BW/PJVUhYjum6n5rWBJkrizPU8y280nsjZEjAnIO8a3Y+KO+K
	lMZNTU4tyXx5VCSyW0FEjHuSwivpb2kjsNStVyLbWB6fZJfGT3Xr1VblC+C6Htmg5yPb
	FveRyyTQ22hWRzDKUgMIYy69waUVGY11Yi5oPMYLJcVsCq47LA1WPAETAV83bwHsWJAV
	k41MXVTomgj0mOKYED6dq3ZKuCLciB5eJ9vBgOZi52bst9nn+3pexrS7mY0QWEQ/FYC7
	ElRA==
X-Gm-Message-State: AOAM531n/W/+k8QMxprHyeFVaYjMQGqTLHnLBUTc1WOWMIDbulPUzjp5
	E9Sj+W2BYxS/SVBepcAyci7eQ4wP1XxZJQ==
X-Google-Smtp-Source: ABdhPJxzoC/1mzD3tVK1P/AG+P+iDzp6rNPQF3vXtHenPebVEuMHYlt5Y59DzprrSjcanoKj9txb5w==
X-Received: by 2002:a05:620a:892:: with SMTP id
	b18mr10844274qka.360.1637125066442; 
	Tue, 16 Nov 2021 20:57:46 -0800 (PST)
Received: from [10.211.55.4] (075-113-161-023.res.spectrum.com.
	[75.113.161.23]) by smtp.gmail.com with ESMTPSA id
	h11sm5960361qko.18.2021.11.16.20.57.45 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 16 Nov 2021 20:57:46 -0800 (PST)
Message-ID: <779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
Date: Tue, 16 Nov 2021 20:57:44 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
In-Reply-To: <aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
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

aGVsbG8gSSBoYXZlIG9uZSBtb3JlIHF1ZXN0aW9uLCBJIHRoaW5rLiBXaGVyZSBkbyBJIGRvd25s
b2FkIHRoaXMgCmRpc3RyaWJ1dGlvbiBmcm9tPyBBbmQgaW4gZ2VuZXJhbCBhYm91dCBob3cgbXVj
aCBkaXNrIHNwYWNlIGRvZXMgaXQgCnRha2U/IElzIGl0IHNvbWV0aGluZyB0aGF0IGNhbiBiZSBp
bnN0YWxsZWQgYW5kIHdpbGwgdmlydHVhbCBtYWNoaW5lIG9yIAppcyBpdCBhIGxpdmUgZGlzdHJp
YnV0aW9uLiBJIGNhbiBwcm9iYWJseSB2aW55bCB0aGlzIG91dCBieSBnb2luZyB0byB0aGUgClVS
TCBpZiBzb21lb25lIHdvdWxkIGxpa2UgdG8gc2hhcmUgdGhhdCBsaW5rPyBUaGFua3MgaW4gYWR2
YW5jZS4KCgpEaXNjbGFpbWVyIHRpbWUsIGp1c3QgYmUgYXdhcmUgdGhhdCB0aGUgYWJvdmUgaGFz
IGJlZW4gZGljdGF0ZWQgdG8gdGhlIAptYWNoaW5lIGJ5IG1lYW5zIG9mIFdpbmRvd3MtYmFzZWQg
ZGljdGF0aW9uIHNvZnR3YXJlLiBJZiB0aGVyZSdzIApzb21ldGhpbmcgdGhhdCB5b3UgZG9uJ3Qg
dW5kZXJzdGFuZCB0aGF0IGhhcyBiZWVuIHdyaXR0ZW4gYWJvdmUsIHBsZWFzZSAKcmVhY2ggb3V0
IHRvIG1lIGFuZCBhc2tlZCBtZSB3aGF0IG15IG9yaWdpbmFsIGludGVudCBtYXkgaGF2ZSBiZWVu
LiAKVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgcmVhZGluZyB0aGlzLgoKT24gMTEvMTYvMjAyMSA1
OjUxIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpLAo+
Cj4gSSBoYXZlIGJlZW4gdXNpbmcgQWNjZXNzaWJsZSBDb2NvbnV0IGZvciBhYm91dCBhIG1vbnRo
Lgo+Cj4gT3JjYSBjYW4gc3RhcnQgYXQgYm9vdC4KPgo+IFRoYW5rcywKPgo+IFJvYgo+Cj4KPiBP
biAxMS8xNi8yMSA4OjQ2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+PiDCoMKgwqAgR29vZCBhZnRlcm5vb24gb3IgZ29vZCBldmVuaW5nIG9yIHdoYXRldmVy
IHRpbWUgaXQgaXMgd2hlcmV2ZXIgCj4+IHlvdSBhcmUgcmVhZGluZyB0aGlzLiBNeSBzdWJqZWN0
IGxpbmUgcHJldHR5IG11Y2ggc2F5cyBldmVyeXRoaW5nIAo+PiB0aGVyZSBpcyB0byB0aGlzIG1l
c3NhZ2UuIEkgYW0gbG9va2luZyBmb3IgaW5hcHByb3ByaWF0ZSBMZW5uaXggCj4+IGRpc3RyaWJ1
dGlvbiB0byBydW4gaW4gYSB2aXJ0dWFsIGVudmlyb25tZW50LiBGcm9tIGV2ZXJ5dGhpbmcgSSB0
aGluayAKPj4gSSBrbm93LCBJJ20gdGhpbmtpbmcgdGhlIGJlc3Qgc29sdXRpb24gaXMgc29tZXRo
aW5nIHRoYXQgY2FuIGJlIAo+PiBpbnN0YWxsZWQgZWFzaWx5LCBhbmQgYWxsb3cgbWUgdG8gaW5z
dGFsbCBvcmNhIHJlYWxseSBxdWlja2x5IGlmIG5vdCAKPj4gZG8gaXQgaW4gdGhlIHNhbWUgaW5z
dGFsbC4gQW55IGdvb2Qgc3VnZ2VzdGlvbnM/IEkgZG8gaGF2ZSBhY2Nlc3MgdG8gCj4+IGEgRmVk
b3JhIGNvcmUgSVNPIGltYWdlIGJ1dCBJJ20ganVzdCB3b25kZXJpbmcgaWYgdGhlcmUncyBzb21l
dGhpbmcgCj4+IGJldHRlciBvciB3aWxsIHRoaXMgYmUgc3VmZmljaWVudD8gTG9va2luZyBmb3J3
YXJkIHRvIHJlYWRpZyByZXNwb25zZSAKPj4gd2FrZSB1cCB0byBteSBxdWVzdGlvbi4KPj4KPj4K
Pj4gUGxlYXNlIGJlIGF3YXJlIHRoYXQgSSBhbSBkaWN0YXRpbmcgdGhpcyB0byB0aGUgY29tcHV0
ZXIgYW5kIFdpbmRvd3MuIAo+PiBJIGFtIHVzaW5nIGRpY3RhdGlvbiBzb2Z0d2FyZSBiZWNhdXNl
IG9mIGFuIGFkZGl0aW9uYWwgZGlzYWJpbGl0eS4gSWYgCj4+IHRoZXJlJ3Mgc29tZXRoaW5nIHRo
YXQgSSd2ZSB3cml0dGVuIGFib3V0IHRoYXQgeW91IHRydWx5IGRvIG5vdCAKPj4gdW5kZXJzdGFu
ZCwgcGxlYXNlIHdyaXRlIG1lIGFuZCBhc2tlZCBtZSB3aGF0IEkgbWF5IGhhdmUgbWVhbnQuIEkg
Cj4+IHRoYW5rIHlvdSBraW5kbHkgaW4gYWR2YW5jZSBmb3IgcmVhZGluZyB0aGlzLgo+Pgo+Pgo+
Pgo+PiBPbiAxMS8xNi8yMDIxIDM6MDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4+PiBUaGFuayB5b3UgRGlkaWVyLWFuZC1LeWxlLiBJIHdpbGwgY2VydGFp
bmx5IHJ1biB5b3VyIGNvbW1hbmQsIGJ1dCBkbyAKPj4+IEkgbmVlZCB0byB1biBtb3VudCBhbnl0
aGluZz8gSSB3b3VsZCBhbHNvIGZpZ3VyZSBJIHdvdWxkIGJlIHNpdHRpbmcgCj4+PiBvdXRzaWRl
IG9mIHRoYXQgbWRlaWEgZGlyZWN0b3J5PyBPLWFuZC15ZXMsIERpZGllciwgaXQgaXMgdmZhdC4K
Pj4+IENoaW1lCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

