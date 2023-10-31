Return-Path: <blinux-list+bncBCNLZ3P6ZIDRBOWUQWVAMGQEB3KRTXY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD7F7DD76B
	for <lists+blinux-list@lfdr.de>; Tue, 31 Oct 2023 21:57:31 +0100 (CET)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-7b9b269f05csf2230730241.3
        for <lists+blinux-list@lfdr.de>; Tue, 31 Oct 2023 13:57:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698785850; cv=pass;
        d=google.com; s=arc-20160816;
        b=mG6AFCYCnQE4vDyrdxaNA7UXyK2khyAm0ConKH9UA8g1JhzGfy/+Sh7rJyS/Bs39kq
         O8PGVFcyMmeb3FKUeQiPIk9oMYSS8uY97FDkES0LC9UPcNeHMp6gOYlkSPd5jSzXwYeZ
         mLIQazJT/OqyVeEQd42Cps9TwiyfoytB5B6qXODQZvGODgfdI2Kst5wBdnY/yiI0B1+k
         QK0Q/sSrjRFLBNeIpt6VdexPXH2XJc2mbx4ZkJ5VtCZtyVo2zXp0RfY/+NckfoYjOIEn
         ZfZ1ptdR7pGY+I7y3rjz8zH2TK+3GF0AlyfFP3B0KFMLYGxrQAwCQ53V/5drIPyjbJrP
         HgCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=0ag4SK1SJh7e49Q4UTawDvo1UEqudAwATBOLzKE+Cic=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=VsSXhWy14Nluc+jH4AvIBaxWLq5V265NZ5z8yprDWXA22TL44mCEKH/+duJ7zPcGqT
         HdiLgElCu3YlO6eYHU8hXunIJtQkQ9qGcvgcpUcYHJ4N/qdN7SYebhjckOPmlOeWiM/c
         WBI1r+jSfOnJBTYsavHGN6+jB94D46Em2NV3yrI/upzR3/qsLTfpYxc54TJt0zYTxu1R
         B0DpHZhGvH75vwa7Yo/dULZNHoRav5IYEKdhMLkYQ0zBSHM6vxgF1NMuyerqCmYeCjcE
         CEhkrpr68dj6+lejYpYzDmGZJ8kMSR9EvMIUh0l8EJlKqSlqKJwrPcmTHd7JSif7HDWm
         z5JQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698785850; x=1699390650;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ag4SK1SJh7e49Q4UTawDvo1UEqudAwATBOLzKE+Cic=;
        b=ph8hnsWqjOVMIzVuiEFYcYLLJzk6VnDR1TIxd9BLP56g929SKd2Sc4pNlZuK9LkxJ2
         nSn/cSAqWtcb/9sLkiagV77PmeW8H2bTv5EYn26aoYYlcx1FYNSnZnyZWhvEvmxmVAZ7
         kFWcI6X6dg+vmDg6LloAn6G13BmwU/dyXAevc79VIbsmQJCBK6kXyTfVhbt7UP2wyQuj
         3SjWuO6ckOEMHjc8UPryPfoWgFj+MTs9JA70Hu7NkY/FLiGQeJTJXa6TNf0VYSEyrwJk
         irBN58n+joGOu3wmnDiD1FOl81BFdZ1khxX5+99YZxGSBsVNWBSs3GjgEwM3bujVqygw
         NHJw==
X-Gm-Message-State: AOJu0Yxaq8+ZJHHd3peY0rgiT0F1mbjaDQ7z8lS6uULdplMUTUggulFt
	AmG/oQ7wehVCWscFxBv46ndwQA==
X-Google-Smtp-Source: AGHT+IG1ZXH6CsXyWTACjSrcA6zbNN0qhpURYYQ8Nxf9DnTXR9HWMRp6OHJ3SpwoRhevNXGuXTQgeg==
X-Received: by 2002:a05:6102:3d8c:b0:457:a915:5e85 with SMTP id h12-20020a0561023d8c00b00457a9155e85mr13977092vsv.28.1698785850492;
        Tue, 31 Oct 2023 13:57:30 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5f06:0:b0:41c:c118:e752 with SMTP id x6-20020ac85f06000000b0041cc118e752ls681341qta.2.-pod-prod-05-us;
 Tue, 31 Oct 2023 13:57:29 -0700 (PDT)
X-Received: by 2002:a05:620a:25d3:b0:77a:1cc0:6e5f with SMTP id y19-20020a05620a25d300b0077a1cc06e5fmr11123035qko.18.1698785849832;
        Tue, 31 Oct 2023 13:57:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698785849; cv=none;
        d=google.com; s=arc-20160816;
        b=TqGwMWY5SjxEkt3Z7/xjIcOBnDU1OMZ/5el62ja35JcFJzYZ/WI9FEYNuvIsScZe5j
         JPOLnTkUU1ucvjJKNziVTBbdWf0kzYI9RmFND4k8iWxQ/sjfMwakv460CbYSdbu0A81l
         0MrAPqUZodcu8jjfOm0u5Xh3NEqqlrR4IgpP3RFbJlaoObH5i3rvC32fCizfNViy1Pes
         EpdwjtY/HpG4qk6s/BexDtWoE1bbi8WaNc54FxU3Z4uZ327BMI2mFoyvoMcQ5/ulxCP/
         TrpplYusojl7Fw1T8pPICw+0ydlTy4jeSrwisnEnjkhWq5gqfCkGNh6OUjOrAJJ6bRdj
         IL7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=BWwKOKBN28zwfKEXptjnsVkdu2Wz7ghsQN5jUS2wptA=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=pQsdqdpl02gTI75xWhF411h6BmOLQpcDaWk8AZXju+IJj8j2i6YJhGbqMD4k4/2uME
         h8+XoCJBccILPcK2cPCmWPbIGa67lnKYbptPjG+NWakg3FznYmD/y1b2rNZiSZtMSdQP
         gl+QK3gQiYQZMQNE8GJnsuvWhPJ6t/QIetunTx/e8s0GtB6f8BLiAtVDvnKoKamHVyN6
         vxlP89FX586ss4guSTQ86t7FUjRItxde5o0KCUfQOhq7XKiWPUq7oOITEkttfWQDWdIN
         XMAfych8MjL+EYRvTOyI1Z+PUEyQbymyte/Pe6VYZp2v6QCQowUPeW/AAkSYlVyPSoHD
         gsYg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id b26-20020a05620a04fa00b007759025c185si1666044qkh.525.2023.10.31.13.57.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 13:57:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of khalfang1366@gmail.com designates 209.85.128.45 as permitted sender) client-ip=209.85.128.45;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-180-HjC65peyOy6BfMp5vIhH8g-1; Tue, 31 Oct 2023 16:57:28 -0400
X-MC-Unique: HjC65peyOy6BfMp5vIhH8g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 44AEA85A58B
	for <blinux-list@gapps.redhat.com>; Tue, 31 Oct 2023 20:57:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 413C31C060BE; Tue, 31 Oct 2023 20:57:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A63E1C060BC
	for <blinux-list@redhat.com>; Tue, 31 Oct 2023 20:57:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18DE1185A789
	for <blinux-list@redhat.com>; Tue, 31 Oct 2023 20:57:28 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-324-1yefUFbyM1KjrOGjZyGyqA-1; Tue, 31 Oct 2023 16:57:21 -0400
X-MC-Unique: 1yefUFbyM1KjrOGjZyGyqA-1
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-408002b5b9fso43915565e9.3
        for <blinux-list@redhat.com>; Tue, 31 Oct 2023 13:57:20 -0700 (PDT)
X-Received: by 2002:a05:600c:3149:b0:409:101e:235a with SMTP id h9-20020a05600c314900b00409101e235amr11201724wmo.28.1698785839445;
        Tue, 31 Oct 2023 13:57:19 -0700 (PDT)
Received: from [192.168.1.221] (79-76-244-145.dynamic.dsl.as9105.com. [79.76.244.145])
        by smtp.gmail.com with ESMTPSA id b3-20020a05600c150300b004083729fc14sm2651880wmg.20.2023.10.31.13.57.18
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 13:57:19 -0700 (PDT)
Message-ID: <2779e7e8-c918-4464-be52-4a20c87ad2fe@gmail.com>
Date: Tue, 31 Oct 2023 20:57:18 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: FF/Chromium based keyboard only browser query?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1902.1683269376.290943.blinux-list@redhat.com>
 <mailman.1990.1683291851.290943.blinux-list@redhat.com>
From: Jace Kattalakis <khalfang1366@gmail.com>
In-Reply-To: <mailman.1990.1683291851.290943.blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: KhalFang1366@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of khalfang1366@gmail.com designates 209.85.128.45 as permitted
 sender) smtp.mailfrom=khalfang1366@gmail.com
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

\Thought I asked this before but....

So my question is...

Is there an addon for FF or CHromium baed browsers that plays nicely 
with Orca 45.X?

I'm very curious on this since I like the idea of KB only workflow for 
web browsing, and I thought there were a few floating around. Yes I know 
IO can just use structural nav, but a few of the old adons had 
advantages over that method

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

