Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A48393769F4
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 20:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620411879;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qUt8zlpo1fLClU3qmtwtQcn6zEa3gXOzGPBxSuW3rr8=;
	b=bwl0uAZzygUVng96P5E7v8B650S/sQ9W+e0TBa7UtDgasQxBZB5Ask+dCb0iZwnd0bDy7p
	qN6Ma96p0oGDgQnqCmronMT2gJEByenN9wgrzWz9BtXBM9nUX5Yxg8axXx2maOMnsl7k8d
	2QJqrcCo7gRMWpRUQO6pzQSZ43Y3eN0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-pGUjWdqVMbe5SIOX8GqPUA-1; Fri, 07 May 2021 14:24:37 -0400
X-MC-Unique: pGUjWdqVMbe5SIOX8GqPUA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EF2898015F4;
	Fri,  7 May 2021 18:24:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BF4659452;
	Fri,  7 May 2021 18:24:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 649CB55351;
	Fri,  7 May 2021 18:24:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 147IOFrq013465 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 7 May 2021 14:24:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2115D2205358; Fri,  7 May 2021 18:24:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C2F32147EDF
	for <blinux-list@redhat.com>; Fri,  7 May 2021 18:24:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE6CC83395C
	for <blinux-list@redhat.com>; Fri,  7 May 2021 18:24:11 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-389-Dm-862aaNJ6mK9-8KN3lnw-1; Fri, 07 May 2021 14:24:09 -0400
X-MC-Unique: Dm-862aaNJ6mK9-8KN3lnw-1
Received: by mail-qt1-f169.google.com with SMTP id j11so7252909qtn.12
	for <blinux-list@redhat.com>; Fri, 07 May 2021 11:24:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=wV526SDEkQsl8xLvttrBq13wF5VVSGIOGSLG6uHUUKw=;
	b=eIpayx1yTq4+0z+E/rnxLd7AaPCjsOdkBoGXYCzWlNqPR+5PUDSl784VNqUlJrL8qT
	4W0tLlnSjWMwdYT+AWAehVxMgxXtvP/zURDz9lkZmDM74zqS1Qq4y4lNHFtvdw/9oge7
	6P3awH4SBYKXPcx0EXanjZnXzPQsqwV+2xlWAll/PxAynHXU4IbmkI1+8LGgEJi6aTSL
	/vRm9OCuHyksGRyWuzv21cFT8MvbPbq9vN5XoZQZp7BhKkhSN1DfqAPEDwThnu8WjcVz
	FqWqTOoKq3IGx8prwD8Y4NrG0Q6IL3I7eOccR6MxYdvzvClIKadQjRgG3ej1dxFMZ52o
	pYXg==
X-Gm-Message-State: AOAM5318gnFtUBm0WphYsepp4KEk3LelxJo+4np4RuBVJeJQICQF0MuE
	Ow9M8ESNMcNySd1eRfGx9yQXtfdPeZ9+Gbd8
X-Google-Smtp-Source: ABdhPJxJQEDss/Yx+cSw/zSp5ZtKryegQsUeWFfqpg7I0aBsWxWCVVS/qTofgObO9FgZMfHtVWzmDg==
X-Received: by 2002:a05:622a:183:: with SMTP id
	s3mr11050761qtw.13.1620411849214; 
	Fri, 07 May 2021 11:24:09 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:3c00::44f4? ([2601:192:4c80:3c00::44f4])
	by smtp.gmail.com with ESMTPSA id
	h10sm3864944qka.26.2021.05.07.11.24.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 07 May 2021 11:24:08 -0700 (PDT)
Subject: Re: No Talking GDM in Fedora 34 (workstation)
To: blinux-list@redhat.com
References: <CAGz84J+eDUuaXq-xrdVuS8XhWYMwoVcByhqrf9CuVvObm744QQ@mail.gmail.com>
	<6e26ee71-f2b1-9b33-43a3-4942dafd3786@gmail.com>
Message-ID: <0f7a94e7-396a-d641-8d7e-e2bc61d5ea27@gmail.com>
Date: Fri, 7 May 2021 14:24:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <6e26ee71-f2b1-9b33-43a3-4942dafd3786@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBkaXNhYmxlZCBTRUxpbnV4LCBhbmQgYWxsIGlzIHdlbGw7IHRoYW5rcyBmb3IgdGhlIHRpcCHC
oCBJIHVzZWQgU2VlaW5nIApBSSB0byBnZXQgdGhyb3VnaCB0aGUgc2lsZW50IHNldHVwIHNjcmVl
bnMsIHBvc3QtaW5zdGFsbC4KCgoKQ2hlZXJzLAoKCgpEYXZlCgoKCgoKT24gNS83LzIxIDE6MjIg
QU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGVsbG8gdGhl
cmUsCj4KPgo+IEZvciBpdCB0byB3b3JrIGZvciBtZSwgSSBoYWQgdG8gZGlzYWJsZSBzZWxpbnV4
Cj4KPiBCZXN0IHJlZ2FyZHMuCj4KPiBGcmFuY2lzY28uCj4KPiBPbiA1LzYvMjEgNjoxNCBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gT2gsIGFuZCBJIGhh
ZCB0byB1c2UgYW4gb2NyIHRvb2wsIG9uIG15IHNtYXJ0IHBob25lLCB0byBnZXQgdGhyb3VnaCB0
aGUKPj4gaW5pdGlhbCB1c2VyIHNldHVwLCB0b28sIGJ1dCwgaG93IGRvIEkgZ2V0IHRoZSBsb2dp
biBzY3JlZW4gdGFsa2luZz/CoCAKPj4gVGhlcmUKPj4gYXBwZWFycyB0byBiZSBzb3VuZDsgdGhl
IHZvbHVtZSBwb3BzIHBsYXkuwqAgTWF5YmUgdGhlICdhbHQrc3VwZXIrcycKPj4gc2hvcnRjdXQg
aXNuJ3QgYm91bmQgb24gbG9naW4gc2NyZWVuP8KgIE1heWJlIHNvbWUgZ3NldHRpbmdzIHRoaW5n
IGlzbid0Cj4+IHNldD/CoCBXaGF0ZXZlciB0aGUgY2FzZSwgSSBjYW5ub3QgZ2V0IGEgdGFsa2lu
ZyBsb2dpbiBzY3JlZW4uIFNpbmNlIAo+PiBJJ20gdGhlCj4+IG9ubHkgdXNlciwgaXQncyBub3Qg
YSBodWdlIHRoaW5nLCBidXQsIHRoaXMgc2hvdWxkIHdvcmssIGFzIGl0IGhhcyAKPj4gZG9uZSwg
aW4KPj4gcHJpb3IgdmVyc2lvbnMuCj4+Cj4+Cj4+IFRoYW5rcywKPj4KPj4KPj4gRGF2ZcKgIEh1
bnQKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

