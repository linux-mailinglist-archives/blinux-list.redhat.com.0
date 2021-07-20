Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AB25E3CFD7A
	for <lists+blinux-list@lfdr.de>; Tue, 20 Jul 2021 17:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626794854;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=b9Ce0fUJx20VInafk9XmG8ZssEQYgBSu8ZGTVMn3ofk=;
	b=f96ZRYtMzx9W/WM8bpmKztVeUC+Gr0XYHSPSpfHNTr3fk6fv6hvqY2cQzIBjXK4fHyDDRP
	OSQEkjrqhuYUIlHgGtbF1pxs8VSRATaeGCM218iDLuVhvWWoUJ/zAmT/1dgfMwn9vMCW0w
	1FZnVafpjV0JCArHmRKgTLfKuIVa/QI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-543-FwlQS12pPq2uQOWMB6mM2Q-1; Tue, 20 Jul 2021 11:27:33 -0400
X-MC-Unique: FwlQS12pPq2uQOWMB6mM2Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C958192D785;
	Tue, 20 Jul 2021 15:27:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE26D19C44;
	Tue, 20 Jul 2021 15:27:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 52A331809C99;
	Tue, 20 Jul 2021 15:27:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16KFR7NJ010471 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Jul 2021 11:27:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6379A112D431; Tue, 20 Jul 2021 15:27:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F898112D420
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 15:27:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 59F51185A7A4
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 15:27:04 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
	[209.85.218.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-461-5P1nGvaiOBiKP8Ihb7TFwA-1; Tue, 20 Jul 2021 11:26:58 -0400
X-MC-Unique: 5P1nGvaiOBiKP8Ihb7TFwA-1
Received: by mail-ej1-f41.google.com with SMTP id qa36so13540572ejc.10
	for <Blinux-list@redhat.com>; Tue, 20 Jul 2021 08:26:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=hcIOXn/vrKnO0wR6/Ep8QFoGzWhVZAtFlFcyr7J08TA=;
	b=WWoLcjR1iWcbrO7/2LkYDn6n2QyzVuPUuF0RmJ2J+fGbPGri0Ebbu5H8Bqg2ff+vMk
	oUm1LusmYnKtS/OdvJI6QfYLXnEGog6+dmsrLnxKT4hijbL05n8GV4JOyUoCkJkysa4O
	fkUfpT+vrFJA2RkhAv0U9rgMTcu96yCeJAgfvttCtr4qHeVKXidTl+tTmeZqSxX5BJSS
	S0ceEM2MZ2MafPNAif44JHVtR5/iJEFwta+IbKWJzmfbYjx7LvJlXC23zFiVgxce+pH8
	ZWSBUX868TC2RE/wBZTBXYcX8BV17YeCKsImSozNtjmDvdxf76IadwaEbKthuHyq370G
	tMDg==
X-Gm-Message-State: AOAM533b/D9ghh9jNYfDc9cnfrzAm00G6O2VeKS0R1i4avg6e1x9TSgR
	Y+xEAajmggWhgcpvhEqxhjQb7FOG3M4=
X-Google-Smtp-Source: ABdhPJyQxD+AM2ApIyQUVOb8kMR1C15hQTP/Pli62tRDjBCYOJd5cS1RWD333N2RJCLHZLRkqAtJUA==
X-Received: by 2002:a17:906:a195:: with SMTP id
	s21mr34467509ejy.373.1626794817179; 
	Tue, 20 Jul 2021 08:26:57 -0700 (PDT)
Received: from [192.168.76.145] ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id h17sm9369369edv.5.2021.07.20.08.26.55
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 20 Jul 2021 08:26:56 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: changing the keymap in fluxbox on Slint
Message-ID: <c1411831-1b3f-9bfc-6e1e-156b648864ff@gmail.com>
Date: Tue, 20 Jul 2021 17:26:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I installed Slint in a VM, by default running the Mate desktop, which I 
could easily fix, but when I start FluxBox, not so much.


The issue is as follows: In the Slint install I chose Dvorak -L 
(Left-Handed Dvorak) as my keyboard. However, when I ran "startx" to get 
in to my desktop, I was presented with the Dvorak keyboard layout, 
which, as a one-handed lefty, I obviously do not know.


I fixed this very easily in the Mate desktop, but have no idea how to do 
so in the Window Managers, FluxBox, BlackBox, etc.


If anyone can, please help me with this issue? I would really appreciate it.

-- 
Warm regards,

Brandt Steenkamp

Sent from Thunderbird on  Arch Linux

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

