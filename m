Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A6645AEF1
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 23:21:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637706063;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=t9XrD+qqXG3U1IYv6wnd16RSDtS1vy71z36U535o8aY=;
	b=grdMgp+38jUsI824y0QSoekEOHhyOQQz/zEFaEiZ9lO2XYDsthIui8K+jd3WKP4hghg1VG
	WkZG8rFyacwqG1JF05e6HqubMjSRGqEsK/yehJolI6up1BBEZ1E/zGuf4i3NtCDzOk1KGC
	JJJeEw+sMvoLzNrIjFQw6Qyr5GsC3rU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-200-iPeQUnL8NZa2d_Et215iqw-1; Tue, 23 Nov 2021 17:20:59 -0500
X-MC-Unique: iPeQUnL8NZa2d_Et215iqw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 892CD10168C0;
	Tue, 23 Nov 2021 22:20:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0A2D19D9F;
	Tue, 23 Nov 2021 22:20:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12D294A703;
	Tue, 23 Nov 2021 22:20:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANMGWSc022379 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 17:16:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2F7FB40CFD0D; Tue, 23 Nov 2021 22:16:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A67B40CFD04
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:16:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F08F185A7B2
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:16:32 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-557-5nYwxaoyO7CR82LjVCtJwA-1; Tue, 23 Nov 2021 17:16:30 -0500
X-MC-Unique: 5nYwxaoyO7CR82LjVCtJwA-1
Received: by mail-qt1-f181.google.com with SMTP id t34so742728qtc.7
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 14:16:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=zaep7hGDLDpKeW1vqrDGJDXVi8V9UtKuQf5whJs4ufQ=;
	b=PvucRHA9KjVswWsptHMVJbGZywRG5o3f5OTrE5eIhuy7AdFtgBbgiUPWqCm4CfT+Bi
	t8h0wGDyAJVCAA90OKug11JQVmdhd+GT1cRcc+RdaCYcM9E3x4t3rhmq9dDWfwLLhWZv
	3bHwmZnKaI0L4FzbC9TYyaZt4NYYJO7bkOV39r3qONpIVaRAlNwSDQpj4MZRNu/kC9Kj
	zi44RAJKbZPfYJz6MIhHgSotQf0mu/bTP/P0Xp9Ih9psI8gCtQKdms1wFhC2yOPkI6tV
	q7XpAT8nPc6kEJV00sbHn+vZgIEsfLMrjWMnPEufPu+TXHOPthdg0zGov0VQ8yPxa5Dc
	/JBQ==
X-Gm-Message-State: AOAM5315bAv7xy+BDgRPMD5U8f0cTEe9XhgHsRFMToZh1xm89bgHAJbN
	scSrRpM4dKF/hByMTTMYn+P30jtPVroamA==
X-Google-Smtp-Source: ABdhPJx9xB8sHHAnd0A5ZUzBSlk1u4gam8t6pSb6Uk4lbo9WP265PkcxL3cQ5bIBP3Lb6t3FfrskCA==
X-Received: by 2002:ac8:5f4e:: with SMTP id y14mr986278qta.305.1637705789518; 
	Tue, 23 Nov 2021 14:16:29 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id
	u27sm7455524qtc.58.2021.11.23.14.16.28 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 14:16:29 -0800 (PST)
Message-ID: <8acad7c9-654e-eeda-f53b-c0ab99d529e5@gmail.com>
Date: Tue, 23 Nov 2021 17:16:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Can I upgrade Coconut to Mint?
To: blinux-list@redhat.com
References: <993f996a-d2ca-1ed0-e23c-3357d5a2f146@icloud.com>
	<5ca73560-e7d4-56f7-c875-8677d4ea9d65@gmail.com>
	<d93cf58b-8952-e111-3973-cbd73f142174@icloud.com>
In-Reply-To: <d93cf58b-8952-e111-3973-cbd73f142174@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSdkIHNheSB0aGF0J3MgYmVzdC4KCgotRGF2ZcKgIEguCgoKCk9uIDExLzIzLzIxIDE3OjA4LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEFuZCBpZiBJIG1vdmUg
dG8gTWludCwgSSdsbCBkbyBhIGNsZWFuIGluc3RhbGwuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0

