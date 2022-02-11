Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C61E04B26A8
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 14:04:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644584664;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qFiA3yg2C99kBeOoxNWcVnX0UM7H6n8+OvhrhaFBJ3A=;
	b=c77XRm+VtcXvmiGDl0/GGoS4i+O3qfiiA5R/jjWxps/BIh1yOYNjLJtqa0wJrgqhadJ62Z
	nP3KkJvLVPUs7UJlsobOzKgxi4YsEhL/6qnFRwJoOSlEYobTwvzh5QtLQ7tZNpn0IEMDhb
	xljzkpAtm2cOPqtoZs0EkTGoWXBkqjg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-294-SfrpRRB1NNG1eJlatc53wg-1; Fri, 11 Feb 2022 08:04:21 -0500
X-MC-Unique: SfrpRRB1NNG1eJlatc53wg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D657E81F027;
	Fri, 11 Feb 2022 13:04:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC8B67DE27;
	Fri, 11 Feb 2022 13:04:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7052446FA1;
	Fri, 11 Feb 2022 13:04:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BD29UV011808 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 08:02:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3CBD9492D53; Fri, 11 Feb 2022 13:02:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3939A492D52
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 13:02:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 203DD80088A
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 13:02:09 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-586-ZEUZBhSiNLG7BEY0FHau2w-1; Fri, 11 Feb 2022 08:02:04 -0500
X-MC-Unique: ZEUZBhSiNLG7BEY0FHau2w-1
Received: by mail-qt1-f169.google.com with SMTP id b5so8900216qtq.11
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 05:02:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=GmNImUrolHR4CAcwEi594qC8MCGk8QRC0dJrP3Kmj24=;
	b=j3bk/366TxByzfzelq4+K1KcV4/aRURlphSw+ojTt+zWfVmsvt3a7NU+qamPMq+RDf
	XnRtkcSs/JULZjG4RoWrY4Zd1Z6rPUAlEDtDHciVt6iZRhIKOmNnei5dUujCcHG81zlB
	VCBrQBqDDY2ImZbSBPV+OhIsPuQCXWJs+pcDZZ8efvbmXl+3hfy6H4WrJ+CterzuY1y0
	h2SKY6sBIywWd3Oxg66wGLxUFtk+Vnqgi9sXeB4eguY928UAvyqGrcFXI0cfor1vSLCp
	+RucfYr974CQIG4vuf1kBkNxw50m9HRmeEvaxwXn9bS/tq3I1gFe7Re6wAVn0fZ9M/aw
	JLYA==
X-Gm-Message-State: AOAM531Stb5bAJ4KcShP2g4nBvm+oNPMdVFyCFjyJvFdJ0q4HtqXDGVH
	Symu6QwMH5Ce6xIxIRKuXwImadcEjUZM/A==
X-Google-Smtp-Source: ABdhPJwNNbmsTAaqiVlnpFho1/zDK7r0KgRnKat1cUYNPIyOjqGyq5vMtqRmWZFaLPSYspcuKwvxOw==
X-Received: by 2002:a05:622a:1450:: with SMTP id
	v16mr942343qtx.472.1644584524024; 
	Fri, 11 Feb 2022 05:02:04 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	m3sm12179418qkp.100.2022.02.11.05.02.03 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 11 Feb 2022 05:02:03 -0800 (PST)
Message-ID: <0c1a11eb-51dc-6ed4-3c76-b53496c90f39@gmail.com>
Date: Fri, 11 Feb 2022 08:02:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Coqui TTS has blew my mind!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<alpine.DEB.2.11.2202111433530.1181@debian.work>
In-Reply-To: <alpine.DEB.2.11.2202111433530.1181@debian.work>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

UGVyc29uYWxseSwgSSBkb24ndCBzZWUgdGhlIHBvaW50IG9mIHRoZSBIYXJkIFV0dGVyYW5jZXMu
wqAgVGhlc2UgYXJlIApzZW50ZW5jZXMgc3RydW5nIHRvZ2V0aGVyIHdpdGhvdXQgYW55IHB1bmN0
dWF0aW9uLCB0aGUga2luZCBvZiB0aGluZyAKdGhhdCB5b3Ugbm9ybWFsbHkgd291bGRuJ3QgZXhw
ZWN0IHRvIGNvbWUgYWNyb3NzIGFuZCB3aGljaCBvbmUgd291bGRuJ3QgCmV4cGVjdCBhIFRUUyB0
byBkZWFsIHdpdGggZ3JhY2VmdWxseSBhbnl3YXkuCgoKRm9yIG1lIHRoZSBwb2ludCB3YXMgdG8g
c2VlIGp1c3QgaG93IGdyYWNlZnVsbHkgaXQgZG9lcyBoYW5kbGUgc3VjaCAKc2VudGVuY2VzLCB3
aGljaCBhbHRob3VnaCBub3QgbmVjZXNzYXJpbHkgZm91bmQgaW4gYm9va3MgYW5kIHN1Y2gsIGFy
ZSAKZm91bmQgaW4gZXZlcnlkYXkgbGlmZSwgaW4gdHlwb3MsIGdyYW1tYXRpY2FsIGVycm9ycywg
bWlzc3BlbGxpbmdzLCBldmVuIAppbnRlbnRpb25hbCBsaXRlcmFyeSBzdHlsaW5nIHRoYXQgY2Fu
J3QgbmVjZXNzYXJpbHkgYmUgYWNjb3VudGVkIGZvciAKZWFzaWx5LiBJIG11c3Qgc2F5IHRoYXQg
YWx0aG91Z2ggaXQgZGlkIHZlcnkgYmFkbHkgYXMgZXhwZWN0ZWQsIEkndmUgCmhlYXJkIG11Y2gg
d29yc2UuCgp+S3lsZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

