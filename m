Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD8A4578E2
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 23:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637361725;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2b+pUyV6d1nvsmVPRshe0pFVZHlBD482RQJ8BehBEV8=;
	b=PAOXjomR2ahlz8CryQIFFd1WuKeJfsDLgOea291093VllWmB3x/IqStxmqkUmbGa29zBL+
	iPooLNEHxLABo8eANor9Dv+m9ifdaCcvvmT6I+xEDVm3KFPRBZ3n3KbzJFVx7ygbwdcEDf
	t2eOOH/LXw2D8MwY+LVFqkJU/SoIjnI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-24-uhRup0m3PrmRy1Y2PP8R9Q-1; Fri, 19 Nov 2021 17:42:01 -0500
X-MC-Unique: uhRup0m3PrmRy1Y2PP8R9Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 212581DDE1;
	Fri, 19 Nov 2021 22:41:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40CDF5F4EA;
	Fri, 19 Nov 2021 22:41:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 372C31832E81;
	Fri, 19 Nov 2021 22:41:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJMdBPX023926 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 17:39:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8E6D1404727A; Fri, 19 Nov 2021 22:39:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89E6A4047279
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 22:39:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 714428032EB
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 22:39:11 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-326-KqM0gx3GMa6vweuhmWh6Aw-1; Fri, 19 Nov 2021 17:39:09 -0500
X-MC-Unique: KqM0gx3GMa6vweuhmWh6Aw-1
Received: by mail-qk1-f180.google.com with SMTP id a11so11708859qkh.13
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 14:39:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=xyak4m9D/rVHzI+pOml+RQ2d4/E3ZgPMdmdOUpycfPI=;
	b=QjHsY0FhF9CVjps8EWPlaeZrJOgcFIg+AjopYXeW6rN+zFqC+Ynf9jsv4JR40b4XyU
	/4HAZds3t4UoZmAP64g+v2tm3DLenkLRUExSVT8oPeujHn7AWCwl0dXy6QAZS1/x1XPI
	TdqM6yb+zw17V21mqB8DbCkrYrv2qM+tZsJ3iiAgtdkNkN4fVLwqcVKPmxBDhlrA1UYZ
	i64QMLuz31LwBERJjytjePjZ8959V2TyNS5wN2bkS2oEE0Lswc/GpCbKQZSnzx4OuLe8
	nf0ociiYSVm+lHOc28OBSDDAm4ue75L9aqBBiZ/WhSqMg6EC5UNT8+VH3VpGw0Z/Y792
	SjHw==
X-Gm-Message-State: AOAM532Mu0PxFLE8R86ezTkR4fZ7g70Cn1B7Bkxk2Cnu1bb2uVaEG5a2
	xSVzbKeS/w4V8FPFXGQ+U88d4T93mv868w==
X-Google-Smtp-Source: ABdhPJxC4A7a754ueYOABDpAcrTqRw7gw2nJ4dUdQT4jzjBffSdu3sv98YgQNuLpyrw2Lgzcb3rQkw==
X-Received: by 2002:a37:8883:: with SMTP id
	k125mr31404045qkd.464.1637361549129; 
	Fri, 19 Nov 2021 14:39:09 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:3969:530a:c081:7ad0?
	([2601:192:4c80:1420:3969:530a:c081:7ad0])
	by smtp.gmail.com with ESMTPSA id f34sm683388qtb.7.2021.11.19.14.39.08
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 14:39:08 -0800 (PST)
Subject: Re: Mint Mate folder options?
To: blinux-list@redhat.com
References: <0B4FABFE-C65D-4207-B145-A053DB7D16AB@icloud.com>
Message-ID: <de59f420-7fb6-f076-8bbf-be96a1c040d8@gmail.com>
Date: Fri, 19 Nov 2021 17:39:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.14.0
MIME-Version: 1.0
In-Reply-To: <0B4FABFE-C65D-4207-B145-A053DB7D16AB@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW4gdGhlICJwZXJzb25hbCIgc2VjdGlvbiBvZiBNYXRlIENvbnRyb2wgQ2VudGVyLCB0aGVyZSBp
cyBhIGd1aSBmb3IKZmlsZSBtYW5hZ2VtZW50LsKgIE9uZSBvZiB0aGUgdGFicyBvZiB3aGljaCBp
cyAiYmVoYXZpb3IiLsKgIFRoZXJlLCB5b3UKY2FuIHNldCBvcHRpb25zIGxpa2UgaW5jbHVkaW5n
IGEgZGVsZXRlIGNvbW1hbmQgdGhhdCBieXBhc3NlcyB0cmFzaCwKd2FybiB3aGVuIGVtcHR5aW5n
IHRyYXNoLCBhbmQgd2FybiB3aGVuIGRlbGV0aW5nIGZpbGVzLsKgCgoKCkhUSCwKCgoKRGF2ZQoK
CgoKT24gMTEvMTkvMjEgNTowMCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBEZWFyIExpc3QsCj4gSSBoYXZlIHNlYXJjaGVkIHRoZSBjb250cm9sIGNlbnRl
ciwgYnV0IGNhbnQgZmluZCBvdXQgaG93IHRvIGNoYW5nZSB0aGUgZGVmYXVsdCBmb2xkZXIgdmll
d3MsIG9yIGhvdyB0byBnZXQgYSBhcmUgeW91IHN1cmUgZGlhbG9nIHdoZW4gZGVsZXRpbmcgZmls
ZXMuCj4gSSBoYWQgYSBoYXJkIHRpbWUgc2VsZWN0aW5nIHRoZSBpY29ucyB0byBzaG93IG9uIHRo
ZSBkZXNrdG9wLiBJIGhhZCB0byB1c2UgZmxhdCByZXZpZXcgdG8gc2VsZWN0IG15IG9wdGlvbnMu
Cj4gQnV0IGFzIEkgc2FpZCwgSSBjYW50IGZpbmQgYW55dGhpbmcgYWJvdXQgZm9sZGVyIG9wdGlv
bnMuCj4KPiBUaGFua3MsCj4gUm9iCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

