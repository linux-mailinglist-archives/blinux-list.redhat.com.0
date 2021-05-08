Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 10A71376F4B
	for <lists+blinux-list@lfdr.de>; Sat,  8 May 2021 05:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620446126;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5qeEVzPlUTuqo6mnRet0GAm1rO+ciX3cO12aZxjEqWw=;
	b=NTVWAnrCuJ0nnHN2PN6PtYz9Yj+tG6b45sh7G9XAV0x85vZXRB8osc7MrcZz1WFtmzcNzh
	4bWm64UjEU8bRqWVM/tQzBJ0eMYDKf3EcZlqAG13exdWXJSbvze8MJVDm7eJIvlqnHzxo1
	Ws2Qy5cEB/7XpfHL8swO9UwOj6pUCZo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-_cWKpfhxMqumlOa9Ifntjw-1; Fri, 07 May 2021 23:55:24 -0400
X-MC-Unique: _cWKpfhxMqumlOa9Ifntjw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74F2D10066E5;
	Sat,  8 May 2021 03:55:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89E215D9CA;
	Sat,  8 May 2021 03:55:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E812A18005B6;
	Sat,  8 May 2021 03:55:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1483svRF020379 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 7 May 2021 23:54:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C2C171711D8; Sat,  8 May 2021 03:54:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD6C2171B48
	for <blinux-list@redhat.com>; Sat,  8 May 2021 03:54:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C7C4101A54C
	for <blinux-list@redhat.com>; Sat,  8 May 2021 03:54:55 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-230-RFQDmNVAO3iMLRQXsZkXcQ-1; Fri, 07 May 2021 23:54:52 -0400
X-MC-Unique: RFQDmNVAO3iMLRQXsZkXcQ-1
Received: by mail-qt1-f174.google.com with SMTP id o1so8191052qta.1
	for <blinux-list@redhat.com>; Fri, 07 May 2021 20:54:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
	:message-id:accept-language:content-language:mime-version;
	bh=ftvXsrfgDMHP95SXYZf6h9XnQQcq8fuWq3flqT1Z0w0=;
	b=io/MKhh9bjaWDL3pgCiWu8WLoqY17RmO24MRCHE9ToeCi8iJwPXLbizaaV0xfJ3qeW
	13ZiRV+UnlrynkJsyrOpjgq2Af7fS4hDQIkzjQelFqQqZX0x8RfLQQE2VNAedTNvdOap
	7j0KniVpOYvsVCFXno6L9rhnRLgVnkZ6NGQjnbFfTdvxj6hY4B28DTI9XQnCWTiIoxQN
	T5ARLqkPo2E4bQvugAxUjXG7tndq6l1yo6THLSs3L8SGwnynAeqV26fek3nPODFexBrK
	TVtwJU6tQCSA9UGMWSIF7UCll4RBhVmNCNWCv0oeCe8MWRd8FDwrRgoZxpyHrmVh1cbZ
	rlxA==
X-Gm-Message-State: AOAM532ff8iEORXfEUSYsOL7IpOka0pmFn9R/Jv5yoAIyrIfvgPoGS5f
	XCBRjmAOF2Et1kAcZ3buEdkyNRJl9Io=
X-Google-Smtp-Source: ABdhPJyVGkSgU1dvhW5KyrNYR2tGgEll7UQRZINlQ7PDy0a/fSW+XxgvHIv291CHQUDiZKWGp/e5Bg==
X-Received: by 2002:aed:3071:: with SMTP id 104mr12900803qte.202.1620446091455;
	Fri, 07 May 2021 20:54:51 -0700 (PDT)
Received: from BN6PR19MB1443.namprd19.prod.outlook.com ([2603:1036:404:114::5])
	by smtp.gmail.com with ESMTPSA id v1sm3229209qti.89.2021.05.07.20.54.50
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 May 2021 20:54:50 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Fedora 34- Orca works on logon screen but not after signed in
Thread-Topic: Fedora 34- Orca works on logon screen but not after signed in
Thread-Index: AQHXQ7x2yr2mAxCeakCWRhISX+1azg==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Sat, 8 May 2021 03:54:49 +0000
Message-ID: <BN6PR19MB1443FC8D1B3AC939EFC2B5A5A2569@BN6PR19MB1443.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello.  I just installed Fedora 34 Mate spen on my laptop.  I got Orca started on the logon screen by pressing Windows Alt S.  I think the Windows key is called something else on Linux, but I don't remember what it is.  I put my password in for my user account and press Enter.  I don't hear Orca come up after I am signed in, so I pressed Windows Alt S again.  I do not hear anything from Orca.  Just in case Windows Alt S does not work after sign in, I pressed Alt F2.  Type Orca and press Enter.  I still do not hear anything from Orca.  Does this have something to do with my user account not having permission to access the sound device?  If so, is there a group I can ad the user account to? If it is not a permission issue, what else would it be?
Thanks.


Get Outlook for Android<https://aka.ms/AAb9ysg>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

