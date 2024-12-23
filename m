Return-Path: <blinux-list+bncBC3NDNGRUAMRBWXYUK5QMGQEAHZZHNA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 577239FA8F0
	for <lists+blinux-list@lfdr.de>; Mon, 23 Dec 2024 02:26:53 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467a3c0c8f6sf77334941cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 17:26:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734917212; cv=pass;
        d=google.com; s=arc-20240605;
        b=LHcezUk2l1crtvHDcDZZbDqLdm1uwixSVZMSchH1ZvaCqdXsufVQ8KAMceFWZUhYKz
         X/LB89d6PGqWKFUH1ofH76laUU100s7jGiJof63mwyvM+qviz/qaxD8AWzbEWvZo26YP
         7OboPJQINrN4Rjpk4bsW5GT5nH+6ilHNSp5GWI4PLYw7mBNNOuvs0umMFGn3nz+W5k1u
         mciNbSEY/dLGjCZPQu1A/dAG9SbwQePnXgFnbg54VBdwaDWkvWg29U6UZjK2oOIvoQw7
         dn258YtE0w6jw03lT/OMgKOEJt3ORBtsMt+jcU5bEt6L4rl7CKug3CI0p1znE/U9wEtx
         AA8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=iCENB2gv7G+8b4QJuwVop7N3cPe5qOSx/wPcl5E8h20=;
        fh=64uN4dmHiGum17WbY6x/vF/AauGjAdKc7cagb5BgVu4=;
        b=ECq7CGGGW/yQgDNnLUbLZa2RKNZ2N3ubGsIZ3NsaooD+L2C/XAf4zji2JkLItJrPHj
         UW63OA68rbYO5qyND4rBFIYUZwpiRJFaT/8BTv1vA/hTgtBf/O/alJh3FfSgBYf+tmP5
         lJmdqotIyT83AxgcYpNEqZOwmYQJmFtNO1p994lCiB0Zy9BIZEaHa6/YrfoahSCvacTq
         Gu9ZvDSt88BAt7JOfETALDypD7VOMEaelWhxdf4EY2zLQLraoCtY2oJid7aiEVbMN2k+
         HdW3H2w9wkLMDsGtUgDVM3FOoC4CL6JHQ67ZkbPMuXzbpBGxDo/GAMVQdtftNyt3dFH9
         qgmw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.156 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734917212; x=1735522012;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iCENB2gv7G+8b4QJuwVop7N3cPe5qOSx/wPcl5E8h20=;
        b=niQEr002qF2eGYaq/nMD8lbclGsZxQ1ktMNyB0ctbCMmwqoUBDqnMDJWAsAPsyjFdG
         72YZp//smaYlcaK3neq6k7n5iktNME+94nGdWzs/7KYpf/pMF5r51Wt2FiXTpGnChLWd
         Pq8yWL9U6KlvKjRSLpTtVvK2LSJvRXZ98nFGmpD4N0k9bLPY/+MTpXuKRkghPciwGvzO
         FcynmfC6symUCsTpYKUZgmmStPj8dj4Qiipj/Vaz3YwwncV7iOlPW26kYvFhG8NjGC+5
         Vhm72uaR5OUH5FnlXiKY+Jj44X2crjXYvkYbiQsK6mq51Nq+cLtBgLzUbfpxZxEh0YIO
         H8bA==
X-Forwarded-Encrypted: i=2; AJvYcCWcpa+RZY/hLxcsyl5n/IRx912U0ax6vRQf1OzAPe6pDJLIc2h0YtY2R/C0+v11FSoQutdxFQ==@lfdr.de
X-Gm-Message-State: AOJu0YyYIemwF4poIPTHml9/y9ujJoEPEG54cK2rgnSM34NkEXsfR4Pv
	ZwvDuxOEx6bv82H44DmtM8nykljmodJ2BvGlDY2MEVpWc3q2+4DafrYKDUjN9N0=
X-Google-Smtp-Source: AGHT+IHS/rCL7q4qth65WLvUIJoRcqB0hW0QDJUSa1/OlIC1qp7I3jHtQaElybjR2kECTUcWcXrSuQ==
X-Received: by 2002:ac8:7f4d:0:b0:467:770f:70a0 with SMTP id d75a77b69052e-46a4a8b7a33mr188276331cf.10.1734917210713;
        Sun, 22 Dec 2024 17:26:50 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7545:0:b0:467:8ca0:7f4b with SMTP id d75a77b69052e-46a3b18d120ls55260901cf.2.-pod-prod-01-us;
 Sun, 22 Dec 2024 17:26:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWBDAIG8q9RsYSbYNYqbIQo0+oRWvyUgRQSoqWIdJP9Exv0TzLwMTPf8B5Xk4X2Ky8d5PUmhnT0p9Ax3A==@gapps.redhat.com
X-Received: by 2002:ac8:5a09:0:b0:466:9197:b503 with SMTP id d75a77b69052e-46a4a9a33e8mr195135551cf.46.1734917209900;
        Sun, 22 Dec 2024 17:26:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734917209; cv=none;
        d=google.com; s=arc-20240605;
        b=ZueTWM230LLeKlPh/DYIN8REEfOakGXHZ4iHeA4MNHSyQ3rr/0UIhO6Pm1eGKECng9
         XH841G87rwKgNm6NOeXjpmiMqE9c8HpdPFcigmMJx1aQ0sTeQJjc8C7D+QnwqJISBvRG
         2ryo4bccDbK1DblcKLjammcj6+28trmrU5e288fONTdfFIRmktQpgH5M2awrjwTSHZpZ
         6IyyqoW4YnTT8y5PZC1OeOk4lVe1Q0C3yM8b45QciMpaMB81Eld9m8X39BP+VgidvzuI
         mDujkBvTb5XfLnJ621zvvS5los1VTgV3B7jUpDFfIgyUtbondmT1+JVlykG79gon1qE3
         AfBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=bn9JLuEUVyTmvjAmuSNBA4lqcXC7r148x+8bOMWK77c=;
        fh=uJcwZF4frgEGUVCQIhGaPtMpFs8kB36WRAu1vg/op1Q=;
        b=Nll1ytNA8wo9jpzhJRVpDJAa9LRslNuvvNSwTEomJtF+fF+g5Ai1GMD5m4rj7kQEIL
         t49k85BnegZmjlIPmGmSAM5Z5Figr7MujVP6vZRfsdugJxqaYTNx/FIxNwUvh89miMl/
         baK1cQCK4NPWYlAmFl5B58o1sm7WYLtNXrGv5X58byDQG0EnniJ2DoIyYDsi8aNisPna
         5ZvpmsUI7W4oDxfvBo70I4JBR0tAh9Iv+Vn/Pm8QNSFWpRbnYqlWwriFavVBb7+hFMeH
         MjJa+I3/WeSWf6PfYn0RN2HfH9dBTAHNmqNHARCwRhQwpTjal202JwrSHTaapXpPt8m/
         Ht1A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.156 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3ebd1f75si91460561cf.497.2024.12.22.17.26.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 17:26:49 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.156 as permitted sender) client-ip=202.12.124.156;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-609-cDnv7M7tOVeQkCeW9Q9nzg-1; Sun,
 22 Dec 2024 20:26:48 -0500
X-MC-Unique: cDnv7M7tOVeQkCeW9Q9nzg-1
X-Mimecast-MFC-AGG-ID: cDnv7M7tOVeQkCeW9Q9nzg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 651BB195608F
	for <blinux-list@gapps.redhat.com>; Mon, 23 Dec 2024 01:26:47 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5F0A41956053; Mon, 23 Dec 2024 01:26:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5C98D1956052
	for <blinux-list@redhat.com>; Mon, 23 Dec 2024 01:26:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D2ACF1956088
	for <blinux-list@redhat.com>; Mon, 23 Dec 2024 01:26:46 +0000 (UTC)
Received: from fhigh-b5-smtp.messagingengine.com
 (fhigh-b5-smtp.messagingengine.com [202.12.124.156]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-152-xEfYtnHZOjuRE1u4vkhlrQ-1; Sun, 22 Dec 2024 20:26:44 -0500
X-MC-Unique: xEfYtnHZOjuRE1u4vkhlrQ-1
X-Mimecast-MFC-AGG-ID: xEfYtnHZOjuRE1u4vkhlrQ
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 385942540115;
	Sun, 22 Dec 2024 20:26:44 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Sun, 22 Dec 2024 20:26:44 -0500
X-ME-Sender: <xms:U7xoZ9mk-_cdAA3cEVA7fk2jzUe3LV0yPX0R9NyZJbKaZvnjGotldw>
    <xme:U7xoZ41CQhrcJPmJFqbl7xq28KlznwM_ZejbrIUIYVa-cNB5z58GBiSTcZRVx44NT
    WGEnOHNQNtoGywFiN4>
X-ME-Received: <xmr:U7xoZzpcXU331jzZsLDDDAF7OHL74IDw_BoC-61D1ExrFHIJ_O8H-w4h0lBqJ0dHaGOtbAffPW_Ci2GqR6c0Z4PEXl-cynfSEFU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddruddtledgfeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecu
    hfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedv
    keekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgih
    rdgtohhmpdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopehklhgvfigvlhhlvghnsehshhgvlhhlfihorhhlugdrnhgvthdprhgtphhtthhopehj
    uggrshhhihgvlhesphgrnhhigidrtghomhdprhgtphhtthhopegslhhinhhugidqlhhish
    htsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:U7xoZ9nM92fXoKRy1czuwIRBgXtEkNkU2buClEcEvMLRs8lp5J1n7w>
    <xmx:U7xoZ73y3CiObGGR97ADEx1clIl8IUWnuV6Kwms1JzvKF4gzcgM1iw>
    <xmx:U7xoZ8vESxWp6yHH8PeZrKu6zu_74BiJYED6kHanW0KLD6azrLw5xw>
    <xmx:U7xoZ_W90gu1yBW0WddRoI_VzKyIIrIgAaH4-vMyEDht1_Hy5WN7Vg>
    <xmx:VLxoZ8zY_Tn90O-8Red2MrjnKKqbBzNg6hPuUJSDa2eu9QtGcJCBd698>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 22 Dec 2024 20:26:43 -0500 (EST)
Date: Sun, 22 Dec 2024 17:26:42 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
Subject: re: youtube issues
In-Reply-To: <Pine.LNX.4.64.2412222022070.996299@users.shellworld.net>
Message-ID: <0bfa9cae-fe08-7504-428e-5cce0774d90f@hubert-humphrey.com>
References: <Z2hB3hnS-T8uW2DC@panix.com> <Pine.LNX.4.64.2412222022070.996299@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 2SbJMXEIghYNbPwajudfxWtBl7suwpN0s-1MBh4JwoY_1734917204
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ps5X-j8bNeAgV_kVT2moRIQW2gVtetX2bmVkYw_ZEuY_1734917207
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.156 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hi Karen: Earlier today I asked if any1 was having youtube issues?  Later Jude 
started another thread with the current subject.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

