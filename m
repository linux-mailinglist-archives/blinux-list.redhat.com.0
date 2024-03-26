Return-Path: <blinux-list+bncBDYPVTOXSQEBBXUXROYAMGQEMCVCO6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EC788C345
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 14:21:36 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-69649f1894dsf67972996d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 06:21:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711459295; cv=pass;
        d=google.com; s=arc-20160816;
        b=CiqvZvaDMf2Z0WQB20wrGzJdhKEciIYmxQ6RCc0jlEwPEP4foKPw1xqh3sfFBJQfhX
         hM8M/RjaSvgmxeqEVQ/L9vCgLtR6CX1Lr18L8NqrT4opyygtBroyWUvWmPaDQQacLY2P
         LpTf0stvavWoT3YZNqiyyl90D9+WJRSkb3lYb+A7MRwHZCAO4WVsMEkFt8eFfYhiAAnm
         kMRUeYAoE7oYfkplbcbIMIPpaNXFCG8YSqLnrl+AYkwTePdYsLDyMda4nP6dMeb3W6Yi
         JjLF5zNQYeXGnh7+IxBLnv8O2b4N56NKElgwjj2ChS9hYaC86SPffbhypCqQA/El01Nj
         Rrow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=PfAXWpHlmynQEFQSv+jP9wxj64NVA+azWw/EqIpAvko=;
        fh=ulDij2kH5sbd2XxkIlDqeXiRoZM6DanfChyPS6gm06w=;
        b=WRbFbiKiqYisBGSidjfip/rcUPqKZDJunRryojIEADB8PNWCcBF2eEGI+Fgxib59GK
         VtH10RgCS/rQkBGHLNmHeRsvxugYuy7hYHNUptIb8o9WYwZQjEeIepMNCZ+c8ImeBnsK
         Omcl4s6AUCpVGCyM91w/qwWmup23ANkJ6iebi0G3+zl4UQDuwkVzSMH+N51HA4lBKVYQ
         ZwoZAVclRBubiRvkqWhspUjO4xXJBy8y07NnxJYc9h6sHVFbsXsJgtiLvF/6imLQzvV+
         QwysWsVg4yasTX5iW1UaW0W+JGLci7ZeXgYuQD0iWfiR+4SDBDJmjB+obpeBciky/WaP
         iHXA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711459295; x=1712064095;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PfAXWpHlmynQEFQSv+jP9wxj64NVA+azWw/EqIpAvko=;
        b=Gtrzs6Go6gOL112eWa3YUso2AFRueGPBeqSsmOhXIVPTS5oYRJX4y3hKIV+S5FLW8s
         y4hdIJTUIWR/oG/OBxHlmzIOa6h6jFYWXrN28FjF8gBBLN4RyNAEOqK1d2xvpgdDFBif
         hbNe0CWpIE83zqJQ0680qmkzFrVwZGY4nTLYwO2HtgNEVjdN+c6TFgSoXhiJTzpiXWPU
         quFXX24fs4vDbzX/kPbH5rSsHRCjZQN+tpoAvAmSLKAPnnlZkAPgCQElfZAzJ/iomOOj
         lG4gMCR9laFVfLlHdkKaKgJQsxiM3YaIC1cJVhta2W9w9mh/XOQbHpNinNdGhtCWuL1y
         C7dg==
X-Forwarded-Encrypted: i=2; AJvYcCUToEfdwIkfwmIYZ48RkjGNY3TdV1udNu6WOM/boOEHeiDIBwzP6xHf2+0NnrBG5zOoy+1D3SIUqtxypqgzOy0I0ZAeC3h9xejU
X-Gm-Message-State: AOJu0YxIHC9v3i1/12DZOX5R27Fn8pMsme3rpTH0K/mQwYTOZSHHGLcB
	FzJasFvEiuEb5iBiuN+V3lm2u4dt4MF7N/QIRdCfCiz9NgxrsL+SRwMjOvSZOG8=
X-Google-Smtp-Source: AGHT+IHL3VD49iJdJArOmpjcWpJEyOq79F9BZ4IAMqDBGd3UbuvpA1HvWjSrFaxUUy56kdftDGwE9Q==
X-Received: by 2002:a05:6214:410:b0:691:2153:55ba with SMTP id z16-20020a056214041000b00691215355bamr9877892qvx.45.1711459295313;
        Tue, 26 Mar 2024 06:21:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4022:0:b0:696:8091:300d with SMTP id q2-20020ad44022000000b006968091300dls1401976qvp.2.-pod-prod-08-us;
 Tue, 26 Mar 2024 06:21:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW1/cNcnuHsOGuRpVuZ/DQ8kO/1w/KWAAPqnu1oDrN3xqSp5kbz61Kzuc0mcb3k0e6ic+mXQq5V82SfCoIlqaxyYS3ZH4VwIBEH+da1
X-Received: by 2002:a05:6214:2626:b0:696:96da:c7b3 with SMTP id gv6-20020a056214262600b0069696dac7b3mr4818591qvb.22.1711459294410;
        Tue, 26 Mar 2024 06:21:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711459294; cv=none;
        d=google.com; s=arc-20160816;
        b=wq7JE3Et6/vIilnkBV08eE5S6VmddQmJLBgul+JCgDygFK41Si19A+UYs0+R+7cwk6
         eX64akMq/rR1y7LFDFDFbPgg3nzf1c3UeRmNWqiBaePtm2CYpregkYDrq/s8eo7+ff4T
         ilObukE9V442SFhypu5A2K49ocfQwShfAuayHJzdry9QIM2E9LTOfdLG5DBFytJhKjeE
         UbcRTIu17GsocOt1EqyAqdccRdbzGykocX38d+/q+Xzmiq8AgPyu8hxCkW4KdxQEP1ru
         abO9C61s0T8r8O2/pPjvU2IYfmtZ9wIVxO2pXUNP6WV7Uf+uOF2xOcIeTT+lFmhiHkYj
         WjHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=AXoDVDPsJCCoDp7De0ssbooaH0qFUSuKqTo297Dm9AM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=WGAIvdn7YpHCPZvXFE+mjc2Ws40Us2vXwOxCGpKQHxs2YqkRJ8/qeljcfAooDMcYsp
         TnnNfoilIgRkVlCzuKkiakMnpoDi/zolh2gKTKrf9TY1YFU6cr4GVhEHk047UM8RkAEC
         IJf44CvB3P4a4Wm5oRKYLcb7Ydcf/xhu/QzAyo/2mHgAKQRMBtTqkl0T43oCwfI8mnBO
         BOIWyp5bRHrof/SlaMt6Tprm4ujdg+4LeVFZgpCagBcPLnOoO/30XmlKJ6VbHb4eL/qe
         VgPOkxzuRFMuaxVCVMIySjt4b7p7DAn6/z25DSbAgj0SfUM0urHAgXpybr88UXyyj4MD
         ASHA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id im15-20020a056214246f00b00696903f7d1dsi3930402qvb.19.2024.03.26.06.21.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 06:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-681-T5SOwVnqOj-GCnmtadOsKA-1; Tue, 26 Mar 2024 09:21:33 -0400
X-MC-Unique: T5SOwVnqOj-GCnmtadOsKA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA860101A586
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 13:21:32 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B5BAC492BDD; Tue, 26 Mar 2024 13:21:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E1B2492BC8
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 13:21:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B5F6811E81
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 13:21:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-96-M7cYyPGzMt6lfPogUCVhLw-1; Tue,
 26 Mar 2024 09:21:28 -0400
X-MC-Unique: M7cYyPGzMt6lfPogUCVhLw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V3r6Z3BKqzPD1
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 09:21:26 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V3r6Z2zHGzcbc; Tue, 26 Mar 2024 09:21:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V3r6Z2xJ9zcbC
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 09:21:26 -0400 (EDT)
Date: Tue, 26 Mar 2024 09:21:26 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: is there any command line reddit client
Message-ID: <ed0f5e28-637e-3934-3cf7-03d6333f76dc@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

tuir certainly isn't it.  I tested it and it crashes on run.
All those packages should be removed from the pipi repository and git
pages taken down.
Only way anyone can get to reddit is use of iphone or android phone or
tablet.
An app may work with windows but I haven't used windows since 2013 and am
not about to start now.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

