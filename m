Return-Path: <blinux-list+bncBC3NDNGRUAMRBZ456OVAMGQECDZKZJY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id E49297F3275
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 16:38:16 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-420f5614aa9sf85077171cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 07:38:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700581096; cv=pass;
        d=google.com; s=arc-20160816;
        b=GGrzd/s4mQPa9kYks5W1L7SY2w1Ayez74mcaQ6MX8xjgMcS3i3ogKUbFGYckcJMTsd
         qBFw6Q0P4yI6PIPn23nZcBo50VJO6iHnVc0KY3db2DJVfA0xFhJv21nL+ICjOHGszZoi
         gMkabWJ4hgg359AzDDYT7qptGjqA3M4wqJTlbdSf0C1eu+ZyUs7tlBRxC6Xck3daSzIR
         YdEwKS1MKU/c7p8jVJm+xki0tOFLJRjF5JQT+7spQhJy7qNhIS+C2hSRp/aTxQTfHSIo
         G5TFeel+3j/Asj641sSH4LH2V5sDyzZdtoziEbLIGO9W9B8yZS+5pNmvWlJ0vjrNqEXS
         +HVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=3JLJz2RtBkON8TklbESs4wBSbCwHN40YIGilToa+KbU=;
        fh=bIlz178UoH1saZMdRi7Inrr/l0LWnglcV608WjXBQBQ=;
        b=sMykDZUoEiXRDUGql/YvBJHctxnSyXpS87A3NIZek/Ygs5vhCF5F4iWqrAVGm9pFy5
         tN/P4z3xIelnmDF6/Yk4SIZ2JJJ6tjumWpgrkqr0MAVNgMHwM4sNt6GqEYT/0OCVTBsn
         lSGDfbzN0QFoAl/KhVCGA+wpuHFornwYp/rn9owJhzeO0XM1/oFQac97YLsAlAk0aHcY
         IXowlRSsxrZKVnwJO37wvpruWTVmLocb4TxpRR2fOR0+k5c7pItU/OjVGNP8Q36OvAF8
         5rc6MaUwie52QzJqDSIoqRgCq39wkE1Cey0fcqKk56EJuqG50sESm9mDXQ0UMQjqe4Rr
         RIug==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700581096; x=1701185896;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3JLJz2RtBkON8TklbESs4wBSbCwHN40YIGilToa+KbU=;
        b=PvELIznRIuOqCUX5ElRZv7sa5hGe1VCx60Qu2tyOcueed+i6gy1URDCdRx6tt5uPB9
         hBsLjhXXBEzgUUurBlxlb3vacSXzfj8hp5TQX0X1UYQeMnSRys+BfWdRO0Esk/mhnRBL
         Mc3pkk1CAqmDVnCpCTjGP7UWjLC2eU86lyU1HmxAwbExIXR6u86AfKQHXS/BVYsxGbLt
         b6ssucfyxom8xtj82m0VxnlYwmiLNKS4ZKc30NBvvVmppNZE0WJx0H7jsoGKrxQyTsyB
         FPEZgZE1ta6eSd36L85urnBM3tdKhxO2N6UqCkOq66XK8j7ud4FBkOmAHkNdQHamx73W
         IyNg==
X-Gm-Message-State: AOJu0YwZDEL0LfYMM9Z6knjD+4huwPFw5XOMdTaxaMuJ92kt+inMDRi7
	nxBPufSNCXlVEuLSoxoY28g+5A==
X-Google-Smtp-Source: AGHT+IEl196XN7fE0VNigWvzqcQjnUHrwT+5KfvDHhRfSi4Fxr3jagFHRCo/DXjzzKr5ophl/BSAew==
X-Received: by 2002:ac8:45da:0:b0:423:74c4:34eb with SMTP id e26-20020ac845da000000b0042374c434ebmr1198014qto.20.1700581095869;
        Tue, 21 Nov 2023 07:38:15 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:4806:b0:423:7215:ee80 with SMTP id
 fb6-20020a05622a480600b004237215ee80ls232872qtb.0.-pod-prod-04-us; Tue, 21
 Nov 2023 07:38:15 -0800 (PST)
X-Received: by 2002:a05:620a:2288:b0:77b:c7cd:cfe7 with SMTP id o8-20020a05620a228800b0077bc7cdcfe7mr10026445qkh.63.1700581095260;
        Tue, 21 Nov 2023 07:38:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700581095; cv=none;
        d=google.com; s=arc-20160816;
        b=KjrKyYnEEwJCWUCrWM7kiKFZv/vxpLM1od2jNVH/mTjbnHDQNToD0rhu+si5uU9tQn
         Yzx1/0/lkIlKE8AdF9uXNo4uPSmd2HrKmyyhAlCFcDk/vKalK8B+Vpt2eKePobJp995c
         fUc3hltp89FacGPV0NAYXCoBWJlN7x9sFrdqN5x21UxzRsVg9/Nx6cghn5PM+X9xCBGl
         GT2rDmE1VabPLQE/Zlh+2Zz8dwcwinZGGW+XwzqBnPYs8pYimUGGqWSjPLtRD5TJlOhs
         nzRPR51XyJIdL3+A1/8c+QVR7xfK3xgKWpQbFFZJBY6LB20PuuA24CKc1S8B88HjkvyR
         WUjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=QBno5qf7gKGisxDbitFAhVxkzj0u6LAF8bJToYIXo1A=;
        fh=bIlz178UoH1saZMdRi7Inrr/l0LWnglcV608WjXBQBQ=;
        b=kxsE71pjqQtlrOwW0sXAQ4TvtTwTb5+k6mf7kdCjRg1LSbAr0zaNnetCzU9klho0un
         e5uVOoUqw3zZpfrR9VucyF0j0cKLCqRprww778sQJ3KDUTFCL4Hh0GNCtI6flQQuWqzC
         RJiPV89avOawLZyHnGNqNMMrKCNiG7oKee6hnHDdAWZ7orH8b+yssSOmOYTqs/rg7HkC
         kedeYYYSDQpTJiF0ImpeAvnPrOlPQm2ZD0q/rVfp7Psgu89398lmKH6iclwFKUK012P4
         NYVIYUC1YlgGcUjLRQRmXyfpaUs7VML8izFFNa2zmct5EElrljDNMuezhWlQfQJvuzMY
         IgdA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id m11-20020ae9e70b000000b00770f3ea254fsi9265314qka.171.2023.11.21.07.38.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 07:38:15 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted sender) client-ip=66.111.4.29;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-171-06zBH3NfMyir-uobk9_Ndw-1; Tue, 21 Nov 2023 10:38:12 -0500
X-MC-Unique: 06zBH3NfMyir-uobk9_Ndw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93A7F823F17
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 15:38:12 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 90A451C060AE; Tue, 21 Nov 2023 15:38:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A4831C060B0
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:38:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 644213C0FCB1
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:38:12 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-102-LxtFhv2GNzyN_6v0V2E5gQ-1; Tue, 21 Nov 2023 10:38:10 -0500
X-MC-Unique: LxtFhv2GNzyN_6v0V2E5gQ-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 323BA5C025C;
	Tue, 21 Nov 2023 10:38:10 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 21 Nov 2023 10:38:10 -0500
X-ME-Sender: <xms:4c5cZW6_DeUWvVvR7c2Ac5m77rJ52GfS9eSoMXLWZd404zxraWzzug>
    <xme:4c5cZf5xNQbK5Qr54sM1Czjx4IqMQpq_BoXxQs1LN4ixSNST6EIleTHLPpaYacyHx
    D12AnMRKKpDIYNTOmU>
X-ME-Received: <xmr:4c5cZVcVtPoqnEIonDB_3pB67juKX2-OimOCFBiecqhebKGRzDNByna6-4BHIoKXOhdGCN4QW-1WnSJZOCpGhWDnsYD2XMUQAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudegledgjedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:4s5cZTKs8Owi55vO2I06u2jqwqn4yIDyReH3iI48i-OQ5yE9qlvThA>
    <xmx:4s5cZaIBinOhQ61EVHeFC-AyvGZ7FEWSRVK0hu022Wq1kYYi60aDAw>
    <xmx:4s5cZUzaeK3NDQGls_wmwGjNQ8-yO5gbnzyARL1RvE2TR9q3mq0wZQ>
    <xmx:4s5cZchLihJdoJQwokiD5MsmE_5aLHz7x3qBah59FfLJIo3xqTNedA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 21 Nov 2023 10:38:09 -0500 (EST)
Date: Tue, 21 Nov 2023 07:38:06 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Harley Richardson <destructatron2018@gmail.com>, blinux-list@redhat.com
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <Pine.LNX.4.64.2311211022030.3574401@users.shellworld.net>
Message-ID: <e4c20f48-32f9-751a-34a1-3426e6e01d2d@hubert-humphrey.com>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net> <20231121000352.GW23130@nntp.AegisInfoSys.com> <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net> <20231121024247.GX23130@nntp.AegisInfoSys.com> <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com> <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net> <a37d8eaa-1824-42d5-8a32-75bf17a906f8@gmail.com> <Pine.LNX.4.64.2311211022030.3574401@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted
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

Well Karen-and-All, I think there are no non-graphical ThunderBird 
applications, so I wouldn't think that would be an option for those of us in a 
straight commandline shell.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

