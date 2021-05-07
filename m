Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 13B0D376AEB
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 21:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620417492;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UTdbc/PpCF3MSoc9UJYcNEo8eCvimL8UvESMnTWT9s8=;
	b=A8kvlC0+j9I3cJ1BNnmvuzrPoHdipcKjyI8fw3BTTThGlOPRTty4xaJOE7Q88nvpih3JRS
	caDBaOXsLzFtkLvm17m52GHhPp10AjnXoThLgXV4lBKYv3NqiPgKRjaFA9zWv/anSfDs1S
	UW5FEP34RGdG0L0/Po6CUtJMruqOg84=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-201-YGRM6FQfPzORnjV-pRkSEA-1; Fri, 07 May 2021 15:58:09 -0400
X-MC-Unique: YGRM6FQfPzORnjV-pRkSEA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DD156D4E6;
	Fri,  7 May 2021 19:58:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46CDE60CCB;
	Fri,  7 May 2021 19:58:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6DB8318095C2;
	Fri,  7 May 2021 19:57:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 147Jvmlt020096 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 7 May 2021 15:57:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 754DA153EDF5; Fri,  7 May 2021 19:57:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F33B153EDFA
	for <blinux-list@redhat.com>; Fri,  7 May 2021 19:57:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63A8B101A54C
	for <blinux-list@redhat.com>; Fri,  7 May 2021 19:57:41 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-552-Rv1aO9tnO4iW50OwLvEj1w-1; Fri, 07 May 2021 15:57:39 -0400
X-MC-Unique: Rv1aO9tnO4iW50OwLvEj1w-1
Received: by mail-wr1-f49.google.com with SMTP id d4so10387672wru.7
	for <blinux-list@redhat.com>; Fri, 07 May 2021 12:57:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=NBddEmAOb0W2nd9VKAnVlH9qGFs6HaDRydB7FqCSn8M=;
	b=XwrsOaCVW0qdP+grlt32S/26noP4nihAIAY8NdjCPxOmPgLPlPaC/gS/rcqWVZtBx+
	s3IZZ1qjwNNcfSPeu7jAzeiT5YSNs5y3cGLbsdTkQBh2dEJy29UP0ARrTRuulDLZ9dZC
	erFhHQNxIY+4cnl6XlPwxmLzwOJcOTtu+crfZJwsC4LdbrL6PSz+mr2lgd0d3Sjah0ik
	/QymHVs8ey2sjMGzZocj1rAIzAadTwCGaQxhkwcvwf3E2NVIuflwtFKMaflMRako1Kmq
	MNIW4lCGIAaOJWfKx+JxR5qXNm64EAHbKmo1uV7i0Gw2aFm3e13qNVuYW9sDI+P3Mnet
	L9gQ==
X-Gm-Message-State: AOAM533jPhPhdiAJTzIwpwR6iJADOlhlADsSHRIXJ/4EpGg/i59ls9m6
	jSbhSR0xpNsKzn0O1iKXJc5I7ZIOS/esSfNP
X-Google-Smtp-Source: ABdhPJxucT/uxGbEcF94Og2UrH/dWdjDGzuEuPlf7XzGfdI0P1dGRxEzNxU6+oH4hwfHP/0csJWniQ==
X-Received: by 2002:a5d:6682:: with SMTP id l2mr14470164wru.15.1620417457638; 
	Fri, 07 May 2021 12:57:37 -0700 (PDT)
Received: from [192.168.1.6] (net-188-218-192-192.cust.vodafonedsl.it.
	[188.218.192.192]) by smtp.gmail.com with ESMTPSA id
	z14sm10707207wrt.54.2021.05.07.12.57.36 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 07 May 2021 12:57:37 -0700 (PDT)
Subject: Re: No Talking GDM in Fedora 34 (workstation)
To: blinux-list@redhat.com
References: <CAGz84J+eDUuaXq-xrdVuS8XhWYMwoVcByhqrf9CuVvObm744QQ@mail.gmail.com>
	<6e26ee71-f2b1-9b33-43a3-4942dafd3786@gmail.com>
	<0f7a94e7-396a-d641-8d7e-e2bc61d5ea27@gmail.com>
Message-ID: <8bae4c10-50aa-3b55-45d6-1e9a2a6de900@gmail.com>
Date: Fri, 7 May 2021 15:57:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <0f7a94e7-396a-d641-8d7e-e2bc61d5ea27@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKV2VsbCwgSSB1c2VkIHNpZ2h0ZWQgYXNzaXN0YW5jZSB0byBnZXQgdGhy
b3VnaCB0aG9zZSBzY3JlZW5zLCBhbHRob3VnaCAKb24gRmVkb3JhIDMzLCB0aG9zZSBzY3JlZW5z
IHdlcmUgdG90YWxseSBhY2Nlc3NpYmxlLgoKSSBtaWdodCBvcGVuIGEgYnVnIGFib3V0IHRoYXQu
CgpCZXN0IHJlZ2FyZHMuCgpGcmFuY2lzY28uCgpPbiA1LzcvMjEgMjoyNCBQTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBJIGRpc2FibGVkIFNFTGludXgsIGFu
ZCBhbGwgaXMgd2VsbDsgdGhhbmtzIGZvciB0aGUgdGlwIcKgIEkgdXNlZCAKPiBTZWVpbmcgQUkg
dG8gZ2V0IHRocm91Z2ggdGhlIHNpbGVudCBzZXR1cCBzY3JlZW5zLCBwb3N0LWluc3RhbGwuCj4K
Pgo+Cj4gQ2hlZXJzLAo+Cj4KPgo+IERhdmUKPgo+Cj4KPgo+Cj4gT24gNS83LzIxIDE6MjIgQU0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhlbGxvIHRoZXJl
LAo+Pgo+Pgo+PiBGb3IgaXQgdG8gd29yayBmb3IgbWUsIEkgaGFkIHRvIGRpc2FibGUgc2VsaW51
eAo+Pgo+PiBCZXN0IHJlZ2FyZHMuCj4+Cj4+IEZyYW5jaXNjby4KPj4KPj4gT24gNS82LzIxIDY6
MTQgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBPaCwg
YW5kIEkgaGFkIHRvIHVzZSBhbiBvY3IgdG9vbCwgb24gbXkgc21hcnQgcGhvbmUsIHRvIGdldCB0
aHJvdWdoIHRoZQo+Pj4gaW5pdGlhbCB1c2VyIHNldHVwLCB0b28sIGJ1dCwgaG93IGRvIEkgZ2V0
IHRoZSBsb2dpbiBzY3JlZW4gCj4+PiB0YWxraW5nP8KgIFRoZXJlCj4+PiBhcHBlYXJzIHRvIGJl
IHNvdW5kOyB0aGUgdm9sdW1lIHBvcHMgcGxheS7CoCBNYXliZSB0aGUgJ2FsdCtzdXBlcitzJwo+
Pj4gc2hvcnRjdXQgaXNuJ3QgYm91bmQgb24gbG9naW4gc2NyZWVuP8KgIE1heWJlIHNvbWUgZ3Nl
dHRpbmdzIHRoaW5nIGlzbid0Cj4+PiBzZXQ/wqAgV2hhdGV2ZXIgdGhlIGNhc2UsIEkgY2Fubm90
IGdldCBhIHRhbGtpbmcgbG9naW4gc2NyZWVuLiBTaW5jZSAKPj4+IEknbSB0aGUKPj4+IG9ubHkg
dXNlciwgaXQncyBub3QgYSBodWdlIHRoaW5nLCBidXQsIHRoaXMgc2hvdWxkIHdvcmssIGFzIGl0
IGhhcyAKPj4+IGRvbmUsIGluCj4+PiBwcmlvciB2ZXJzaW9ucy4KPj4+Cj4+Pgo+Pj4gVGhhbmtz
LAo+Pj4KPj4+Cj4+PiBEYXZlwqAgSHVudAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

