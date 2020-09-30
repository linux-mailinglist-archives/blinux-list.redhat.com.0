Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id DD9F627EF9C
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 18:50:33 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601484632;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VlqqJMbsObeRO7tOodo64jlmAN1ME24MsPNZIrjmB9M=;
	b=S23mf5eUI9/KIsycJkOG7bfEkSAgFqrKHuAIhVzrzUzSYzTucFVVV/KoHrMJVSc4VzgFLa
	nVjBpvsu8vz9c/mC8bOM3PVdfOA0MjERtKQqjchRr7B9XoCNhNHVZNXMLvn5LY9OzrgIZi
	YPlYj/rG6NyPKh9yI8kfxAa3lZ8itOM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-B9zvm_SMMF-LIxlHntWfKg-1; Wed, 30 Sep 2020 12:50:29 -0400
X-MC-Unique: B9zvm_SMMF-LIxlHntWfKg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B40F4104D404;
	Wed, 30 Sep 2020 16:50:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A20FC6715F;
	Wed, 30 Sep 2020 16:50:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 03B4E183D020;
	Wed, 30 Sep 2020 16:50:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UGo7eJ012290 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 12:50:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 47ED41111C76; Wed, 30 Sep 2020 16:50:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F24F10073CC
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 16:50:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22849803526
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 16:50:04 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-280-BMGr0CYVNb2Tu5k8QCsrbA-1; Wed, 30 Sep 2020 12:50:01 -0400
X-MC-Unique: BMGr0CYVNb2Tu5k8QCsrbA-1
Received: by mail-wm1-f49.google.com with SMTP id d4so191418wmd.5
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 09:50:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=ioDK8aES6dApT1Oq0LTivJOggdVsVbUT9OV4KAeh0qg=;
	b=gnVo82yWGkv2ZGNCdqqTCfG2BwkMh23tNgjPzTWxTW4k/OdIrULje+ha6Y85TsNmxw
	7FLgFXOSKSDSsotEDVcgbuu0K3deBuYKmKATUxXuow58JpoHwx77GQnCgaxnE6FDhF4+
	KfBjQ8+6ln5XIgGKRDpi2ycYl1QijXr9KGo7Zrxu/FwfbyAik01+xxO8KGWnvCCUlVC/
	lTpNaErVsjI+PaN1mjfXv4kBBZw9tNbn8IbuIZqtSKGVjsMWTjWZ64sQWll6vlXdOhlO
	II6VyBTZlhMzWdJhnMfaVUbGn2n3gjXdphp7zNSi1kOE0V+4oCc4DlFHLfcFh6EK/LXx
	GVIQ==
X-Gm-Message-State: AOAM5313orBOhFmCk11MejUF6aKGuYUDhwjj0Nz6IahNB7s9tQL1yNUq
	u9Of9PiWwqM1XHpQNpzBl0NopDhUDsXrMA==
X-Google-Smtp-Source: ABdhPJx+eIjAmXL7Ju/OttbNobKVSNuYIzPdcPBQ7ffuDUJaZza6PnV67l0194efZXw3wfQ4iZkZsA==
X-Received: by 2002:a1c:f20b:: with SMTP id s11mr4148253wmc.144.1601484599395; 
	Wed, 30 Sep 2020 09:49:59 -0700 (PDT)
Received: from [192.168.1.130] ([87.75.178.108])
	by smtp.gmail.com with ESMTPSA id u8sm3626026wmj.45.2020.09.30.09.49.58
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 30 Sep 2020 09:49:58 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Console screenreaders
Message-ID: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
Date: Wed, 30 Sep 2020 17:49:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So....what's the consensus on console screenraders? I've a few things I 
want to do in a TTY, so what's the general recommended TTY screenreader, 
or console one?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

