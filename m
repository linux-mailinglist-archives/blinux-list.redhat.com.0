Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBF346F413
	for <lists+blinux-list@lfdr.de>; Thu,  9 Dec 2021 20:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639078698;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8cllBwKW8tilu3EEC1MPmMfAizhtEpyxMTR0ldsBprM=;
	b=NEjfZ1hNVi1yqMifrhYk+F7baiCkMy3or0wKlx4RtoXetX3FeF+yotx7nNUnLLGNbHeH8j
	igMkc9PrbDpY2/z/tirsossODSxmQIcdJ14mCONv98uXulCiLDEOgOl9ONZvja8+81WAc/
	Fl/QcABsuFtSbgd0lAdq/81khu/0WF8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-162-ANPpy8KuPzWIAuMm476xpg-1; Thu, 09 Dec 2021 14:38:14 -0500
X-MC-Unique: ANPpy8KuPzWIAuMm476xpg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 322DF1019984;
	Thu,  9 Dec 2021 19:38:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B87219D9F;
	Thu,  9 Dec 2021 19:38:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 658954BB7C;
	Thu,  9 Dec 2021 19:37:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B9JbhwZ000566 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Dec 2021 14:37:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4F05E14171FD; Thu,  9 Dec 2021 19:37:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A75714171FC
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 19:37:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3141B811E7F
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 19:37:43 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-349-9qFC9sRgOvCJABcl3i7NvA-1; Thu, 09 Dec 2021 14:37:41 -0500
X-MC-Unique: 9qFC9sRgOvCJABcl3i7NvA-1
Received: by mail-wm1-f48.google.com with SMTP id o29so5134976wms.2
	for <blinux-list@redhat.com>; Thu, 09 Dec 2021 11:37:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=FcgH4BxcAtsz2NBBpFV/GKjpyRtBrUSFj8GGmfXsVRA=;
	b=6KKY+7/CHA9MJjCb/n7AdvMQZWIsodgTz4M9IMf6ew39CjZ0dEBxNY//VQliZRaugL
	XlwX9dNrIUIWBbS+7EtkUYJbyz9z0Hyu+l8jOwfgaXwmJgRn1m/wQQ6cy6St5p4bnjrs
	leC50SGj+ew5hF05PkTr0Dc33glAuNKf3McHvIKkN1Vd4B1kNwpPrvEzXpbxuWeKjSGZ
	U3Gi4OT3M6G5wSlxWk6lNsxNkOwQaZQ1TyaVpiGizJtpeazxzJ4n33dQ/K/vRgZipfyr
	Wlto54W7G8oJJNPDZ/oUao3RL0U3wdBOQECr4u6Ya2I5nA2FzNYijYKezTite1VIosux
	ptbA==
X-Gm-Message-State: AOAM531Zr2PB/Dj05TLFAiuEojPW7hXhDdXRJ5ZLWR77Aaf/4D5HRzTI
	MhfLxwkku0cfOao5Jd3aFQPevU3WoUwpHvaR
X-Google-Smtp-Source: ABdhPJzJha3aULj1AYyR4q+deTm971DHRZvCDYAv01nHGMb4xQR6I1kvtcH32fjjKRGcZ89xLrF0pw==
X-Received: by 2002:a1c:96:: with SMTP id 144mr10095974wma.126.1639078660049; 
	Thu, 09 Dec 2021 11:37:40 -0800 (PST)
Received: from [10.0.2.15] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id l5sm845972wrs.59.2021.12.09.11.37.39
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 09 Dec 2021 11:37:39 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: State of Fenrir?
Message-ID: <41682d4e-5479-cc52-ef99-d06f51d12d3f@gmail.com>
Date: Thu, 9 Dec 2021 19:38:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.9.1
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Just curious, what's the state of play with Fenrir thesedays? I came 
across it in the AUR and it got me wondering if it's been worked on or?

I seem to remember in at least one repo it was broken and I'm not sure 
if that was ever fixed

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

