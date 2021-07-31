Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B3D573DC285
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 03:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627696198;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xioh13K5PzkS4KDJ/VERDVZQDdM89QyZqD94L/9/bNo=;
	b=BJLgvJtbzfD8BnX6ItCtK8RtnDSPktf3kZZHfcSAA0wntwtN2piZKEtHDbIlXJywlzOU7U
	ZcQ+OI63cHHJ65qFnUdJAlIIYoP9jhubFuN/GNSoBa4YG1Qkny74tPrdYAaxKue6rPpeiU
	nYvj4YUJ5XwrLfKPXmGN+P9cKWxH2oI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-54-191eP85DPsKsyS3WyisUzg-1; Fri, 30 Jul 2021 21:49:57 -0400
X-MC-Unique: 191eP85DPsKsyS3WyisUzg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C30691853026;
	Sat, 31 Jul 2021 01:49:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 874711057F63;
	Sat, 31 Jul 2021 01:49:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D834C4BB7C;
	Sat, 31 Jul 2021 01:49:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16V1nges016049 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Jul 2021 21:49:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AA279210EB8E; Sat, 31 Jul 2021 01:49:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5BC4210EB8D
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 01:49:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 443CF8001EA
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 01:49:39 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-541-RBRkJpu1NKOZL0dYirwteg-1; Fri, 30 Jul 2021 21:43:28 -0400
X-MC-Unique: RBRkJpu1NKOZL0dYirwteg-1
Received: by mail-qt1-f169.google.com with SMTP id a12so7777897qtb.2
	for <blinux-list@redhat.com>; Fri, 30 Jul 2021 18:43:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=iUl2Cp2RBu/hBPPxAa8k4Ijr71AY/HdKqfZJR3Qc/I8=;
	b=Oa6fPr476FeqaVd8sChSC73eEybfAo0NsoeUDFnO3v5yA9jdhJDQ92e9OHqtwR11bF
	7HVB9WiXaJ7lz+wRryjeu0m12XfIb/NcMkhk9RLtyk3W8hu0y0jNb10CmjyujxvJY1Q4
	cnewP5DZuDZcG2mZqv78COmK98Jluita2wEWkBO4/E37HfHNt8DfEEGdEbO7YawumYaR
	dJjabrcnjnKf425Z2skUTmTxWV3DpOQMKzxXrJ0imB2H4EWY+B29S/XQgPIdVloZh+X0
	QA9sScK3+xdh/GWrHRm61cVZnCxOrpZ+He9D/tBhs0GcftzMayyuRf0r4bcml/sbR+5o
	YzPg==
X-Gm-Message-State: AOAM530XJF69NjhHqVHa6sRVPnICO1wCtelQ0T7KRDlb757iuv7blO0R
	OoxH/GRvdBJqEevQlyTYPdao3Uqm5zvcSA==
X-Google-Smtp-Source: ABdhPJyp8tIft/y4J8wUmtvvedsOKwxJ9jyyjrRWjsDy+GXOK6mgw5Hz1bN1VaPUTOYfaPrfJJFRSA==
X-Received: by 2002:ac8:6b0f:: with SMTP id w15mr4859858qts.366.1627695807376; 
	Fri, 30 Jul 2021 18:43:27 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::adcc])
	by smtp.gmail.com with ESMTPSA id
	y10sm1327494qta.16.2021.07.30.18.43.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 30 Jul 2021 18:43:27 -0700 (PDT)
Subject: Re: Solus and Broken Speech
To: blinux-list@redhat.com
References: <6fbf8e0f-bfb0-92ea-8b0b-7e271cb3a4a1@gmail.com>
	<alpine.NEB.2.23.451.2107302039530.29234@panix1.panix.com>
	<a329141f-64a6-e2a2-1c8e-b16e5d108cad@gmail.com>
	<c88d0cb6-3429-f482-6de3-2bd6262b9967@gmail.com>
Message-ID: <977e443f-189c-849c-eb13-842d6b036500@gmail.com>
Date: Fri, 30 Jul 2021 21:43:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <c88d0cb6-3429-f482-6de3-2bd6262b9967@gmail.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKUGlwZXdpcmUgYW5kIHB1bHNlYXVkaW8gYXJlIGJvdGggaW4gdGhlIFNvbHVzIHN5c3Rl
bSwgdGhvdWdoIEknbSBub3QgCnN1cmUgd2hpY2ggc3lzdGVtIGlzIHJ1bm5pbmcuwqAgV2VsbCwg
dGhleSBib3RoIGFwcGVhciB0byBiZSBpbiB0aGUgCnN5c3RlbTsgZm91bmQgdGhlbSBib3RoIGlu
ICcvdXNyL2JpbicuIEl0J3MgcG9zc2libGUgdGhhdCBvbmUgaXMgYSAKc3ltLWxpbms/wqAgQ2Fu
IGNoZWNrIHRoYXQgZWFzaWx5IGVub3VnaC7CoCBJIHN1cHBvc2UgYSBjb21tYW5kIGxpa2UKCnwK
fAoKfHBzIGF1eCB8Z3JlcCBwdWxzZWF1ZGlvfAoKCndpbGwgZ2l2ZSBtZSBhbiBpZGVhIG9mIHdo
YXQncyBoYXBwZW5pbmc/CgoKClRoYW5rcywKCgoKRGF2ZQoKCgoKT24gNy8zMC8yMSA5OjI3IFBN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEl0J3MgcG9zc2li
bGUgdGhhdCBTb2x1cyBpcyB1c2luZyBQaXBld2lyZSBieSBkZWZhdWx0LiBOb3JtYWxseSwgaXQg
aXMgCj4gYSBkcm9wLWluIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

