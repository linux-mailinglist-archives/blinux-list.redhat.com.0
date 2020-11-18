Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9BD122B82C5
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 18:18:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605719934;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9NrDH0mMcFbXovafF6nDWhFF7Rxxz8bAINr4I9SaTXU=;
	b=VDZnULXniC83rm3GrBpR83bk/QishUcqie8vH/zX0ytamQKkJ0WBMARoaj0FF6w4O9GfWW
	Y0GZVG7N4iGvVrxOR4BIxHtFYGyP7QUSieg3nSu5efLnKGAqBlza30LkRA2mBzNAGsQ5Ll
	c8kSm4SXXQcGE9afcY7cfDaYBhu5b+Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-454-FRdwWPtLMdWnFMlzp3VxXw-1; Wed, 18 Nov 2020 12:18:52 -0500
X-MC-Unique: FRdwWPtLMdWnFMlzp3VxXw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59F108144E3;
	Wed, 18 Nov 2020 17:18:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A37B6064B;
	Wed, 18 Nov 2020 17:18:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 49D5418095C9;
	Wed, 18 Nov 2020 17:18:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AIHIfWZ001994 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 12:18:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3F8B81134CA0; Wed, 18 Nov 2020 17:18:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B5B31134CA1
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:18:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0E6F1021F60
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:18:38 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-269-1GdXCE0DMJOsnIlwYtr7Pg-1; Wed, 18 Nov 2020 12:18:36 -0500
X-MC-Unique: 1GdXCE0DMJOsnIlwYtr7Pg-1
Received: by mail-ed1-f41.google.com with SMTP id t9so2814472edq.8
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 09:18:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=JNTEZZ367NObgQuOkrEeMZHwOGmUT9eJPURrhrnC1z4=;
	b=J80vw54u36e5kYfA5R49Os9vsPH3ME2x00Ndm9HZzY5uMlnvy6KAJMr38K+Oe+v39q
	XWEtpX3/npbnTzqEnLe75Zf9XKjB/5TE/0S6CsxkOyQ9a/hefcn8M8Bn0LNVRUCrbMIC
	7eePPo8OUwLg4Ir5zc4oOGJEe8Q0XYy4PqLA0xQmR6dA46UTYxrHO6qoxT4bJnG6kmsf
	oLKKmpCyZCiltdxJ4DjtwMnJbd7nfG1oBlHUYzpS+Su82y7jpkKtqUrqyS6ztglhoadp
	elUEnLrAnAxg+Hp/9tt+QDGKhL37QLYdkMj58mCveqL3sFvo4Ld3aIorqRCiLDeFT5UW
	kEfQ==
X-Gm-Message-State: AOAM530WXON64V6wQX+Z0bLWDsFKszODJtC0Ebhxt/W2hHcsH45H77Uo
	DbtIlW7dN2cldZnDqEL5ojMTq21GZV4lZLkL
X-Google-Smtp-Source: ABdhPJzNXRmBR8gNyMt/V6GY7omXsGfqp1GkIAYhu0Q2g4gK1m3DwEZCRzdmvc80NfrMg9AkQh8m0A==
X-Received: by 2002:a05:6402:1a33:: with SMTP id
	be19mr27614819edb.47.1605719915124; 
	Wed, 18 Nov 2020 09:18:35 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id d20sm1000799eja.4.2020.11.18.09.18.34
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 18 Nov 2020 09:18:34 -0800 (PST)
Subject: Re: commands for installing all the English female RH voices?
To: blinux-list@redhat.com
References: <160571915570.6.16599038312638547320.1828353@slmail.me>
Message-ID: <902341ca-f80d-0cb4-82bd-6996b2c72a3a@gmail.com>
Date: Wed, 18 Nov 2020 20:18:33 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <160571915570.6.16599038312638547320.1828353@slmail.me>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

aGVsbG8uIHlvdSBjYW4gdXNlIGFwdCBzZWFyY2ggcmh2b2ljZSB0byBzZWFyY2ggZm9yIGxhbmd1
YWdlIHBhY2thZ2VzLgoKMTguMTEuMjAyMCAyMDowNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiDQv9C40YjQtdGCOgo+IEhpLAo+IEkgaGF2ZSBMaW51eCBNaW50IE1BVEUuIEkg
c3VjY2Vzc2Z1bGx5IGluc3RhbGxlZCBSSFZvaWNlLCBidXQgaXQgb25seSBoYXMgdGhlIGRlZmF1
bHQgVVMgRW5nbGlzaCBtYWxlIHZvaWNlLgo+IGkgd2FudCB0byBpbnN0YWxsIGFsbCBvZiB0aGUg
RW5nbGlzaCBmZW1hbGUgdm9pY2VzLiBpIHRoaW5rIHRoZXJlJ3MgMiBvciAzIG9mIHRoZW0uIEJ1
dCBvbiB0aGUgR2l0IEh1YiBwYWdlLCBpdCBsb29rcyBsaWtlIHRoZSBjb21tYW5kcyBmb3IgaW5z
dGFsbGluZyB0aGUgRW5nbGlzaCBmZW1hbGUgdm9pY2VzIGFyZSBpbiBhIGRpZmZlcmVudCBsYW5n
dWFnZS4KPiBzdWRvIGFwdC1nZXQgaW5zdGFsbCBhbmQgYWxsIHRoYXQgaXMgZmluZQo+IEJ1dCB0
aGVuIGJlbG93IHRoYXQgd2hlbiBpdCBzaG93cyBjb21tYW5kcyBmb3IgaW5zdGFsbGluZyBpbmRp
dmlkdWFsIHZvaWNlcyBFU3BlYWsgaXMgcmVhZGluZyB0aGF0IHBhcnQgaW4gYSBkaWZmZXJlbnQg
bGFuZ3VhZ2UgYW5kIG15IGJyYWlsbGUgZGlzcGxheSBqdXN0IHNob3dzIHN5bWJvbHMuCj4gRG8g
YW55IG9mIHlvdSBoYXZlIHRoZSBFbmdsaXNoIGNvbW1hbmRzIGZvciBpbnN0YWxsaW5nIGVhY2gg
b2YgdGhlIGZlbWFsZSBFbmdsaXNoIHZvaWNlcz8KPiBUaGFua3MsCj4gU0wKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

