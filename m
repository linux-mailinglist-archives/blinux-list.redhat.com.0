Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 13C453FA07A
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 22:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630095564;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZbPabITvjhUUo1k1adSnpgJGYr8+HvglYjQnHWVlfgQ=;
	b=ABIoPYy+Q4RQ/plOLVGjz8oiHziWICs/dNm6ifIim4ms6wL/4KkpnMshW8XfY1iC61Qoml
	zzu/ML/n4VTdlZzEbpqtnh6nMUzL3CWdTrmO+/s9OdGaRoTmKaXs9dbIz/PwzMVUQ/MD9g
	HCPyiYFa8L/YaQ+yhjD3oz3byiIJeKs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-UJ3pm4ZkO_qXj0Cy3c_gpg-1; Fri, 27 Aug 2021 16:19:22 -0400
X-MC-Unique: UJ3pm4ZkO_qXj0Cy3c_gpg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C7C0594EE1;
	Fri, 27 Aug 2021 20:19:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A96F5D6AB;
	Fri, 27 Aug 2021 20:19:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 70C7A4A7C8;
	Fri, 27 Aug 2021 20:19:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RKJ4Vt023306 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 16:19:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B0ACB200B69A; Fri, 27 Aug 2021 20:19:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC338200B696
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 20:19:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DEDF489C7DB
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 20:19:01 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-273-JQGLW01aNMOlNaRwDbtMiQ-1; Fri, 27 Aug 2021 16:18:59 -0400
X-MC-Unique: JQGLW01aNMOlNaRwDbtMiQ-1
Received: by mail-lj1-f177.google.com with SMTP id m4so13453598ljq.8
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 13:18:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=g9gIEL8OMtpo1Hrh7qACoZ7FLS912gInGbQZNdxgNoQ=;
	b=Px6pmv5rrwji9hYXPuKxMj2K5IBkOt4udvmPcNFN3YQvX56u265Qc3cx3l3rz1ab6Y
	+P5mPnxvZ774LPR82yuRUPx2szj4A4Xg18UfqKOITSK2vvyJ4hcnz0Fs4gmDMz4RrSjS
	6WzC1UmZtsXkCqzi56vjupK/gH6f+nEPWqA9MqogpDBiuFigqgYVrUYAXCqZa2Yq3olX
	u2t/HgIGzq6tIpJHiE1E1hFSxD0Z+ghSQuJmIgCo5+rxmNgpz//zGlm+FCEJ9S5jiGG1
	l2Gs87XbXQ1M7qum3wDNjxam0JkrXNMkj8VvaAyimSXmO1/KBCASzqefZfjYGjUYPcA9
	3N4Q==
X-Gm-Message-State: AOAM5309BpyNWAEMw5BjnyHFA3B+8Q38k71VwfePwBEx73iztzZHf8gT
	hbYdOn3qTe+k3TK7uCRszDPdeLWqdCs=
X-Google-Smtp-Source: ABdhPJyhMsf82g0PdkD5NYtg/QnA2g65OnJzhbk0MEY5c2+KjycY50UYwtjwihRcHpTLXjT6DWK9hA==
X-Received: by 2002:a2e:1311:: with SMTP id 17mr8915355ljt.457.1630095537609; 
	Fri, 27 Aug 2021 13:18:57 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id q5sm682649lfg.36.2021.08.27.13.18.57
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 27 Aug 2021 13:18:57 -0700 (PDT)
Subject: Re: unable to install from aur
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <20210827.181429.958.4@[192.168.1.100]>
	<f27ef494-11d0-71e1-dc0e-f93762bfb28b@gmail.com>
	<20210827.191148.445.6@[192.168.1.100]>
	<94329dd7-51a8-3124-583b-508c431cafd8@gmail.com>
	<20210827.200251.396.9@[192.168.1.100]>
Message-ID: <80cc3f79-c913-996c-b6c3-2f0be6579c82@gmail.com>
Date: Fri, 27 Aug 2021 23:18:56 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210827.200251.396.9@[192.168.1.100]>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MjcuMDguMjAyMSAyMzowMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C4
0YjQtdGCOgo+IGdwZzogcmVxdWVzdGluZyBrZXkgZnJvbSAnaHR0cHM6Ly9kYi5kZWJpYW4ub3Jn
L2ZldGNoa2V5LmNnaT9maW5nZXJwcmludD03QTVBNEU4MEU0MDA5N0JBRjZFQUQ2Mzg0NDkxOTBG
MzIzNUFCRDNCJwo+IGdwZzogV0FSTklORzogdW5hYmxlIHRvIGZldGNoIFVSSSBodHRwczovL2Ri
LmRlYmlhbi5vcmcvZmV0Y2hrZXkuY2dpP2ZpbmdlcnByaW50PTdBNUE0RTgwRTQwMDk3QkFGNkVB
RDYzODQ0OTE5MEYzMjM1QUJEM0I6IFNlcnZlciBpbmRpY2F0ZWQgYSBmYWlsdXJlCj4gZ3BnOiBr
ZXkgZmV0Y2ggZmFpbGVkOiBTZXJ2ZXIgaW5kaWNhdGVkIGEgZmFpbHVyZQo+CnNvcnJ5LgpjdXJs
IApodHRwczovL2RiLmRlYmlhbi5vcmcvZmV0Y2hrZXkuY2dpP2ZpbmdlcnByaW50PTdBNUE0RTgw
RTQwMDk3QkFGNkVBRDYzODQ0OTE5MEYzMjM1QUJEM0IgCnwgZ3BnIC0taW1wb3J0CndpbGwgZGVm
aW5pdGVseSB3b3JrLgoKLS0gClNpbmNlcmVseSwgQWxleGFuZGVyLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

