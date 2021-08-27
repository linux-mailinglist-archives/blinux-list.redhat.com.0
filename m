Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A078B3F9F2F
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 20:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630090243;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G9tk9al/KavYN8lOMROKX7wzk3HzJ3SOmCPkaXnvn5k=;
	b=Y/QFYuw3TssV1GE6eF5s6PwZJG7DOfHKGwqwLkjpx5GbnmIrgMRP21AyipujyRNaf1R8S+
	//Rv7kNNYZxd2+mwFOrvc9H07EeOcs2M9aFrM7zjqhiMnRRDrqmRlmrCgEgp5G1z3n2LO5
	nNkhmf0cx5ABEvMQ1YuHCB76RFq8WYI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-183-qO0R3dWWOiKJXSHmzbOtYg-1; Fri, 27 Aug 2021 14:50:41 -0400
X-MC-Unique: qO0R3dWWOiKJXSHmzbOtYg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01606190A7A0;
	Fri, 27 Aug 2021 18:50:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DAD03100EBB8;
	Fri, 27 Aug 2021 18:50:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2364A181A0F1;
	Fri, 27 Aug 2021 18:50:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RIoY2q015961 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 14:50:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F2CE420BEDE3; Fri, 27 Aug 2021 18:50:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEA5720BEDE5
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 18:50:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA14D866DFA
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 18:50:30 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-14-jcJPCpovNjG94QAkLVRdgA-1; Fri, 27 Aug 2021 14:50:28 -0400
X-MC-Unique: jcJPCpovNjG94QAkLVRdgA-1
Received: by mail-ed1-f52.google.com with SMTP id q17so11280427edv.2
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 11:50:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=/EvVpEKuIA5Z3jhq/r+7JczHcgE0aCx7VnGgnO+a170=;
	b=TwbTk0rgkvaUPTd6SiZTHNM5GgiBSSf8hOLVmgFs7h0Ur/gBjUXmBf6x7LMDiP2p+O
	SVTgEGLmU7UkMDmk1BXPOPsoFYUg24rKSP1hNdTxH2wwPfHZRg6TjC4IsaYK4HCPlBpl
	IqXCqdpSIbxCqfpxOEuax0vANeLJrUDYLIPh8jNEsQH8aVad9wQnQzotsje3BOjzsvhU
	4kXkvPap2MHcUL4O1DUmFQTWAeKCAb8nfUPRjk3Dzfd642BaGkHclmPi4HD3bU2vPns0
	dEAjkSfH+XJgRghEqBMoenh0TGsZGSOniksxTwEXRkn7JaiaoIdy2M5YgzWM0TphOvrx
	FE7Q==
X-Gm-Message-State: AOAM533fJCRPeBikT26nTHGmJbEKe+l7D+xlunQPzsA9hSGGdbDznuXN
	9Dv3ztksjkqtXRTkxykY/RIeh8Vtxvc=
X-Google-Smtp-Source: ABdhPJydBDIVARxKEhizYKEdtC7cf0vxT+QarYb/MsIX5Mx3Hjc5LRyK23LI9DgZkxzVFMbKDB7Zjw==
X-Received: by 2002:a05:6402:518f:: with SMTP id
	q15mr11119490edd.226.1630090227017; 
	Fri, 27 Aug 2021 11:50:27 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	i23sm4031769edr.72.2021.08.27.11.50.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 27 Aug 2021 11:50:26 -0700 (PDT)
Subject: Re: unable to install from aur
To: blinux-list@redhat.com
References: <20210827.181429.958.4@[192.168.1.100]>
Message-ID: <f27ef494-11d0-71e1-dc0e-f93762bfb28b@gmail.com>
Date: Fri, 27 Aug 2021 21:50:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210827.181429.958.4@[192.168.1.100]>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MjcuMDguMjAyMSAyMToxNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C4
0YjQtdGCOgo+IFdoZW5ldmVyIEkgdHJ5IGFuZCBpbnN0YWxsIGZyb20gdGhlIGFyY2hsaW51eCB1
c2VyIHJlcG9zaXRvcnkgYW5kIHRoZSBwYWNja2FnZSByZXF1aXJlcyBhIGdwZyBzaWduaXR1cmUs
IGl0IGZhaWxzLgo+IFRoaXMgaXMgdGhlIGNvbnRlbnRzIG9mIG15IH4vLmdudXBnL2dwZy5jb25m
Ogo+IGNoYXJzZXQgdXRmLTgKPiByZXF1aXJlLWNyb3NzLWNlcnRpZmljYXRpb24KPiBuby1lc2Nh
cGUtZnJvbS1saW5lcwo+IG5vLW1hbmdsZS1kb3MtZmlsZW5hbWVzCj4gcGVyc29uYWwtZGlnZXN0
LXByZWZlcmVuY2VzIFNIQTUxMgo+IGNlcnQtZGlnZXN0LWFsZ28gU0hBNTEyCj4gdXNlLWFnZW50
Cj4gZGVmYXVsdC1wcmVmZXJlbmNlLWxpc3QgU0hBNTEyIFNIQTM4NCBTSEEyNTYgU0hBMjI0IEFF
UzI1NiBBRVMxOTIgQUVTIENBU1Q1IFpMSUIgQlpJUDIgWklQIFVuY29tcHJlc3NlZAo+IGtleXNl
cnZlciB3d3drZXlzLnBncC5uZXQKPiBrZXlzZXJ2ZXIgaGtwOi8vcG9vbC5za3Mta2V5c2VydmVy
cy5uZXQKPiBrZXlzZXJ2ZXIgcGdwLnpkdi51bmktbWFpbnouZGUKPiBrZXlzZXJ2ZXIgaGtwOi8v
a2V5cy5nbnVwZy5uZXQKPiBrZXktc2VydmVyIGh0dHBzOi8vc2tzLWtleXNlcnZlcnMubmV0Cgpw
bGVhc2UgbGVhdmUgb25seSBvbmUga2V5c2VydmVyIG9wdGlvbi4gaSByZWNvbW1lbmQgdXNpbmcK
aGtwczovL2tleXNlcnZlci51YnVudHUuY29tCgpvdGhlciBzZXJ2ZXJzIGVpdGhlciBkbyBub3Qg
d29yayBvciBkbyBub3QgcHJvdmlkZSB0aGUgZnVsbCBrZXkuCgo+IGtleXNlcnZlci1vcHRpb25z
IGF1dG8ta2V5LXJldHJpZXZlCj4KPiBJIGNhbiBpbnN0YWxsIHdpdGggcGFjbWFuIGp1c3QgZmlu
ZS4gSnVzdCBub3QgZnJvbSBhdXIuCj4gV2hhdCBjYW4gSSBkbyB0byBkZWJ1ZyB0aGlzPwo+Ci0t
IAoKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

