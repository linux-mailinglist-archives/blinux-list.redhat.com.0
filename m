Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6D757352BD8
	for <lists+blinux-list@lfdr.de>; Fri,  2 Apr 2021 17:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617378413;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bQijv/LXsrRQXSfaPOasKwJAwQajzXWHV4MXEhqjrEc=;
	b=GCltCod/JLS/kmxPgxza+wfneLGAhlBz+7Ouvxl+mp1EPFoINF/f/eUM3FGBz+UqPXoqDt
	ZtayvcJwNiKKwHnlUuirfhKQb4HXdJhuclCOq/+7JeaK38FyGGOI1gvAQOYcsa74gk/y48
	AjuDj+LQ5wpA/g26LGj3xUj5gxKeDJ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-578-4bdgW0sWOO2UG9txhK-C2w-1; Fri, 02 Apr 2021 11:46:51 -0400
X-MC-Unique: 4bdgW0sWOO2UG9txhK-C2w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C728107ACCA;
	Fri,  2 Apr 2021 15:46:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 036BE5C1D5;
	Fri,  2 Apr 2021 15:46:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9612C1809C84;
	Fri,  2 Apr 2021 15:46:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 132FkfTJ006604 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Apr 2021 11:46:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 14F872157F24; Fri,  2 Apr 2021 15:46:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F9F12157F23
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:46:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64524185A7A5
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:46:37 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-127-vthakegJMCKmzQfkicCnHA-1; Fri, 02 Apr 2021 11:46:35 -0400
X-MC-Unique: vthakegJMCKmzQfkicCnHA-1
Received: by mail-qk1-f179.google.com with SMTP id q3so5562678qkq.12
	for <blinux-list@redhat.com>; Fri, 02 Apr 2021 08:46:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=lA+d8CNbpyEoVHrmnW/J6ko/M69gBLHR9tiHwXUxLQ0=;
	b=fv05savLHBLvdsF0gALaNOnHspM5ZJSoEaj2mk8n8XeAbHSK4q86/25BebXA1/O+Mq
	K3fGnbK/mJdgtOsRs+qPwhsUO7jDtC45ubYkzXObqJDnSmDW/UnMzMkpDBI+jnfueL55
	DO+4Qwu7bUXFkPxBjXe+IXgoeE8kr2XapvjaKKVCmDUPDGhWWQyY4NJmNr1vcXzZ19ZY
	Frz2S7KSFgwMPZdHluElwIFtPDLGimXuLxPKMM94yoDJtQXyLQO6deHwIfguc+r9LP/e
	OcYpw33NOzHhEfnGCRHPW6aLcB+sK4mXRNSbb0JIRtgIhBcyxg9CaEIXhWNVGXDHqgFz
	AOWQ==
X-Gm-Message-State: AOAM530TTHXwsuvOj1PHTEaAs2aPIEzXSGijEq6U/frwdt/47YB6yjPE
	PT2ISSxFWM7OUZzgehf1ZFydo96aFev0CQ==
X-Google-Smtp-Source: ABdhPJyjIPzQK3EkYPmHQqcpKSNmn7/vcn2lepupKRo2+eOE0l3OijE+QhUudQv9LVBqRDrI428BcA==
X-Received: by 2002:a37:9c4d:: with SMTP id f74mr14208001qke.202.1617378394560;
	Fri, 02 Apr 2021 08:46:34 -0700 (PDT)
Received: from darkstar.example.slint ([2601:192:4c80:3c00::832f])
	by smtp.gmail.com with ESMTPSA id p5sm7775792qkj.35.2021.04.02.08.46.33
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 02 Apr 2021 08:46:34 -0700 (PDT)
To: blinux-list@redhat.com
Subject: How to track cursor highlighting in espeakup, using the laptop layout?
Message-ID: <559434a5-9227-c410-a00b-e5315d4a1640@gmail.com>
Date: Fri, 2 Apr 2021 11:46:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
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

SSBjYW4gZmluZCBzb21ldGhpbmcgY2FsbGVkICJjdXJzb3JpbmciLCBhbmQgaXQgY2FuIGJlIHRv
Z2dsZWQgb24vb2ZmLCAKYnV0IG5vIGhpZ2hsaWdodCB0cmFja2luZy7CoCBQbGVhc2UgYWR2aXNl
IQoKCkJlc3QsCgoKCkRhdmXCoCBILgoKCi0tIApUaGlzIEhQIFByb2Jvb2sgcnVucyBTbGludCBH
TlUvTGludXguIEhvdyBjb29sIGlzIHRoYXQhISAgaHR0cHM6Ly9zbGludC5mcgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

