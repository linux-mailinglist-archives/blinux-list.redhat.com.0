Return-Path: <blinux-list+bncBCVPTHE7K4IILUVOWEDBUBABDTKLO@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 453DA8B3822
	for <lists+blinux-list@lfdr.de>; Fri, 26 Apr 2024 15:15:51 +0200 (CEST)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-23555b970ffsf2245678fac.3
        for <lists+blinux-list@lfdr.de>; Fri, 26 Apr 2024 06:15:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714137350; cv=pass;
        d=google.com; s=arc-20160816;
        b=dBsSCa1yWxj95nTbiRDZyKppDSnyUZ4PCsp6E5p9v82A6txwHfFkE3ba1/+VrbLF+a
         k+h9eyt/zwSUskMOt+43ZgJ3i+wRFdYeplp+yKacSxiglnax3+lzTc/Zcm3q3LVn1KNt
         jweO5KvakNnIURhoxM/wfU5svQdUkOJvgNzqcF9qaV0BHJdUtrysew0aX0oOBoCbP3nE
         uG0lMV+Psi2TFK+0+nB6AuyHj5RSaRUnxrde+FUbg8r1s4BWjUIQeFRIhlJY/vxXN77Z
         nJxj9lXgyQrYHDnhzQC5iXKO+vosoTAvuR1v44Jo9fbeaQLmoQ/zggHI0kAOmu042fL3
         tznw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=ytanFMylZnx+ppykmkfYscNQZuWne/WDFPUbkiyWSxw=;
        fh=Kx1H2MJg8zPsvXChkABlKXassdJQtSNvxf8k1tzBiE4=;
        b=ft6j3z7BfRAEKLAYaReeCwpAfJOGzvuoZJZBl+DG/YWR7aPpHWSNMBUMkrv6ks9Pqw
         rKfS+rpnP4yzNKBy69OIMrQKBnJ/M+tSesoSIkUQek4sCqowtctBhIuj/qdqw8pC85ni
         otzee/eogquqdDI/L9xCZX0JYWE3gWme4Yf9vsje7+LbW+/gcf0L7ugKsiI7mmSEmw7b
         /T8UnGM4XYmZtDcg5PlIguESl8j65dQMCwFNWCs2ZHLOKE6MvPaF9ThPQU/z7KlBzhNS
         KePKzc36eqEm6BJGS0IE5dox9ZB+y87WM/J48MrOaujekLrHXly3CJlsiAuFk2KGcriw
         IREQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714137350; x=1714742150;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ytanFMylZnx+ppykmkfYscNQZuWne/WDFPUbkiyWSxw=;
        b=kQdSLS2IabQFSuu1ajA5IpZwJ5i/7VYz1jDvnb35BNp4WrT8cLkUyDN7PbMbMBOyFo
         TlA+RyVTabqeAIbDK2s/lmkWFdOpSdDFF7+4RIkZMM9nVA+B/bXJIVZxJ9s7159Wdugr
         3KuaSrU7j/DV0IW2hsRDu4VHw+TQ9podr42b5rM8kR4pCb9njhpo8DWV38YSAkScA9lR
         fButH2Es+dbM5Xop0C/7y/+I6DjgXYl/DuSf+UKgNyZmm4hDA69NUEuXB4bkh1ymoAPQ
         N2mMtaU18We6xrWRXb/98rv8AzidULb8N2eottMRrXfo9QOquLCepIXJ7n35pzWC7gVa
         htRA==
X-Forwarded-Encrypted: i=2; AJvYcCWE4JOw6hJABRlyMkeIuoowpbQHIypbv0Ie2Dp6/uDPjx1eifWRLehacGERcYnnunsyvOUL6yaPoUSTRGJ4XyNaswoelOswO+ED
X-Gm-Message-State: AOJu0Yzn5U9kL7DOgmTXeaugR5LYys3HfPiiygMOpa7IiW9JcQK531kG
	e1phlohWHFKUD+iRzangtY2vq52OraGn09HJX0lc3hlDJfz5yvymsMbF/ObUSR8=
X-Google-Smtp-Source: AGHT+IF+rk4Zr1T/Bi6enmS8710UTz500tFOi/9hxZVB3zBOM92f60W9zAi+8IfgyazhRj7ZgRi/vQ==
X-Received: by 2002:a05:6870:d8cf:b0:222:8fd3:262 with SMTP id of15-20020a056870d8cf00b002228fd30262mr2613498oac.24.1714137349562;
        Fri, 26 Apr 2024 06:15:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:659f:b0:23b:4898:e31c with SMTP id
 586e51a60fabf-23b4898f2afls1366594fac.0.-pod-prod-07-us; Fri, 26 Apr 2024
 06:15:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXBH9+4Xp0m+RigYsKqWkPKBz/rpQ4RO1DfFwCWuC5tmTTF1ZBPs/dZhr2A5Ar7Gtid/sWFQAxxp7ITle4r3GMvOExh5d2/pbB3BRh8
X-Received: by 2002:a05:6358:3916:b0:17f:565c:8db2 with SMTP id y22-20020a056358391600b0017f565c8db2mr2927529rwd.12.1714137348346;
        Fri, 26 Apr 2024 06:15:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714137348; cv=none;
        d=google.com; s=arc-20160816;
        b=UePlv4lDs/gn1yNevTr1N3mhY5a7koEjA2hhg+K2Afkm3YvTuqiW+DFWU5xQ0dukW3
         IxdBCehgx7WItKRRjQuw/rBOcQoT7ebPyFaRDC8J2LS7oxbK0ltmEXzLSF3A12ToQKHU
         GsamSKovS4Xt1GZMlT9x/ZS973G8ZSS9CRpwdQUKySQlXh2IvVDAPbpdqo5MCf9S0DFF
         kBoyOARAMVBizIISZAYNfdBqCNTmajdU5PFoPPPUcUOLUaujE3ND2+JxyymXOY/QtrWo
         CidhQLL7JecYZCznuLpZs5ZE//p/NWlFGn1vTUWip8OBuj5OLo/J+bz3CZd1dk+KIoTC
         JdFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=ytanFMylZnx+ppykmkfYscNQZuWne/WDFPUbkiyWSxw=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=CBXcvoZKOGWS7sGulNXu0gBRNNXQLSYxF6qobbFQIty47mwNb2mME/rThFPzVlUCGB
         0ao004jRz1XI48WxEwQDvnCyGeZpr8P7MlVQwqoE+LmDCow9W/7gfbER5R0RPjvI0Ysa
         H3VIJY8ZWWAxduwOd2xlsP+NN4ywH7DuY3q3xcU+GT/jSXvz7FphOf0ZItTYN7e2/+H9
         cq5alEEc+Z/WGstF/HUYUpXRGRIq4LZhM5gSoGNCGGDosfedAyIdas9EmMy5X6tCj4C2
         QYcu3D9/ZaXUDSNBqX8Nt5ATocCDYgcLPtkbUr2/L/Pb08vRKUYrNKBtDKhi8r1dIJLc
         PfPw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id fc11-20020a0561224b0b00b004da9f158ea0si3641610vkb.304.2024.04.26.06.15.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 06:15:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-219-vNnWnYNOOn2Mwp77vqL7Eg-1; Fri, 26 Apr 2024 09:15:46 -0400
X-MC-Unique: vNnWnYNOOn2Mwp77vqL7Eg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E0D0814048
	for <blinux-list@gapps.redhat.com>; Fri, 26 Apr 2024 13:15:46 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 17A9C2022EA7; Fri, 26 Apr 2024 13:15:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3F282024511
	for <blinux-list@redhat.com>; Fri, 26 Apr 2024 13:15:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7AE0C28104B1
	for <blinux-list@redhat.com>; Fri, 26 Apr 2024 13:15:45 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-534-208tMt0tNReHm_vd54Ei2w-1; Fri,
 26 Apr 2024 09:15:42 -0400
X-MC-Unique: 208tMt0tNReHm_vd54Ei2w-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 3BA3544FC8
	for <blinux-list@redhat.com>; Fri, 26 Apr 2024 09:15:38 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 050D8100B35; Fri, 26 Apr 2024 09:15:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 032F31000AB
	for <blinux-list@redhat.com>; Fri, 26 Apr 2024 09:15:38 -0400 (EDT)
Date: Fri, 26 Apr 2024 09:15:37 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Autible books and Linux?
Message-ID: <Pine.LNX.4.64.2404260913230.1920571@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Hi folks,
Asking the question with care  given clearly Linux means different things 
to different people lol.
anyone successfully accessing audible books  in the Linux command line?
If not, what is missing from the goal?
thanks,
Karen


