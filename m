Return-Path: <blinux-list+bncBC3NDNGRUAMRBWPX7C2QMGQEIDU6GPI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B6095390C
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 19:33:15 +0200 (CEST)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3db174abaa0sf1051690b6e.3
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 10:33:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723743194; cv=pass;
        d=google.com; s=arc-20160816;
        b=EwfzELlUChAB29Rj455wBgjDZMxTzYe5Hpn3MC2PrAyFWbiH6h6FMCFEAKGqQa8sLu
         /Levp6cwOn7ljSOszyQYaWDkamu1Y9jWAImcIG4iHmiMCEPSLRM/6R3jg2s2Etu8AQlz
         li/PAbUCHEqj8bVGQszuGH6rpFe6TpmQ/CMqxKzgmvI2A2mBn6G3E2/xNpCjoDEjVnYS
         fKH2GzzxkqO8S0TUzcU71g0zdtem8SjV8MR+5eEqpePI+mDra1a7gZYccSAwIKeqmaOa
         7AAOTqJLhl8I9p1f1NU1o6/5uZgql1ZsuNdRYSKUQ6pCQpza6UBENbo78OnMDWEPmHVD
         eEbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=HV2k8nVmyvFqleD1f/R8gBgMjZ6rERuaJj0W5OrcrCY=;
        fh=Vrt8MaZW7/cDeo2s8eLbj8V7zjslGH3i5rN9ZvXU7j8=;
        b=xHeeqB1TcA58kKpus8ZXmmo+oIfl2Y9ZYAdV1UngXfjO5TVRCFatJ5d9RsXl/+rL+j
         sb8zaS8jT2/pWJ3A1yGWhARMzffbpF4dz9hjnHnCoXFRUiDx9x1JKZyqEoxuACfAL3Bw
         vXhPJwtCEtxaeASnx3o+tw0G5uH+kS6Pb7MiimSYp3OXAIf0mJU0iERcYpU2yWw7Rmas
         KTnhyxnAkHW/GCDnabmncW9VW169o+NgQpj9bcWo1+Zk0WA2a1BxawXkRUTK4P/2d+0D
         lgHi67yLqY2u2AiLiCmjMi7tURvDpc0wdG+yuoDhEl/iSyac0XGgw9bZjjbbV98jmGef
         19Yg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723743194; x=1724347994;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HV2k8nVmyvFqleD1f/R8gBgMjZ6rERuaJj0W5OrcrCY=;
        b=sbF9vYYbksyn0OdishndKOUgO58I129C+cPR8ywoEd3qsvKTgI0b0w0fmBuROPdG2R
         OMF/+GOBZivuPZOU4V4LBXiWTBVVye1UvMMMtxefgqgTmPozuP+b2T7WHA2I9KhkR+rg
         GkJZdq6hnRJXVCdM+r1kJNHzaiDi5yLJRlaQOGpfB5iHukV2VF3H/DLTLAc+WGnheOtF
         kf3TUu1kfPUrA3wxAyxnmtPwTDeW0GqsuXAJo/xX8hhXJr7NpJRoPE7rKgi9yd+x0AJs
         l4TcXxT43JJFLsooecS8K0wx1BD5S3/D7cVsBE1V10Zmuq0VclMY0YR+RUJ7FVBMUsir
         LerQ==
X-Forwarded-Encrypted: i=2; AJvYcCWYVgOu3UoMZk1CIlFzbaJdIpEJreXF6j/J3OBBGhSFrcahIS1W8h7dtSUQRClPysjcGbs34VeTHiScaDgcUVmKKMY9OFgGl2/X
X-Gm-Message-State: AOJu0YyIsY5vFkqtPePIF0UaQ/ntZ9aaIFhjU0Nq0lA3nciG3NAbzCWc
	2/tpaSo+wU9Fn3sc+jCTWXuJPbUODDp6O+tOcVFUM1sW9XJRbHt117WGo/msPEQ=
X-Google-Smtp-Source: AGHT+IGIGDLCa4l0wFeGZ/IrkOG2MNwQJGUPKIn3DI1q5G4kl8AozQP27yJSn9UV6klDjDRHVm4Jqw==
X-Received: by 2002:a05:6808:128d:b0:3da:b3b3:17f with SMTP id 5614622812f47-3dd3ad403f1mr158198b6e.25.1723743193614;
        Thu, 15 Aug 2024 10:33:13 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:81:b0:440:a6ed:f91e with SMTP id
 d75a77b69052e-4536746034cls14756391cf.1.-pod-prod-04-us; Thu, 15 Aug 2024
 10:33:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV1HuE4TKtsEdcZnfXjx4eaiU45GQF2ZkQQyA5FP8osm2vX+oRfmP5YEJx/2FXgBd+RwZcl+XTozRO0I5DjJOb0tBFwKFZuD1zyCBmD
X-Received: by 2002:a05:622a:59c7:b0:451:8ad0:c8b with SMTP id d75a77b69052e-453742071efmr2399061cf.1.1723743192847;
        Thu, 15 Aug 2024 10:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723743192; cv=none;
        d=google.com; s=arc-20160816;
        b=hWPXJoZaNfhAJXomgdmSIDcGyII2/XaPeMlO7hefyzZp9ybYPyBp+mWAhBxCZlWg6y
         vHF0WG1sjSGN2I9+K/1wfDA0AaFD8fM8Tc06/XCTljSQfcDOGMjDr2tbuM2CCfj2i71l
         R9bYxOXiSPQ3QNiMx6OyBOqnnQAi+3eVEQ4m6j83dicazb2SRBSpWCfI5mzqQIXHxhtI
         Nl//WDLw6quPe2L4TpXhYOo/KxCQ+hj3ux2feN6grNDLGU055KxQdntRHooU1I6dygHM
         gC/7F2iKLwSKB7JPQK5+ASbePaEJEvhyG1sj8rBR7QP0sH7utv9nKHACS8wdPJ27Z/ZE
         rOiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=FYxcjAXaWorE3SqJcmudFd8mhaBDtgK5SUjzjRjwVWg=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=DrDCcZkAVyQiOXrIQU8ZmPwpXolcQXn4I11C/sy1PCOkNwholCmX2+koFdmPVlgG+x
         30giVF2nu6lghKKQTlhby6kXFnrhVsBSD6+DZCd3Gqqj2g8rqsuQ9EBjGM3rD5OlDqCq
         sZN4YjKl/jHWA/Qazr9LF7Z0PFGk3YTugYaNKRy+hMiJK79TX+zY2VPJ0tN71G+IZ5xY
         TlA/h9Afu2lJEEo+Mk6VZ3h3i7lq1gmgea85jqZd921MF8JW7Ylse52ANK3aZAOzc0S7
         uhWPforywTeV+VEiYuWWqK9ZJmcZM9F6JS1Avou09onmCNUVff6mzMxVZLyfLl3OHjmX
         WYzg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-4536a06e49fsi21406961cf.238.2024.08.15.10.33.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 10:33:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted sender) client-ip=103.168.172.148;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-540-LS_4vHGhMNi5WbHsTcfpJQ-1; Thu,
 15 Aug 2024 13:33:10 -0400
X-MC-Unique: LS_4vHGhMNi5WbHsTcfpJQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 710841955D52
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 17:33:09 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6B2D8300070A; Thu, 15 Aug 2024 17:33:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 688ED300019A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 17:33:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 035031955D5A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 17:33:09 +0000 (UTC)
Received: from fout5-smtp.messagingengine.com
 (fout5-smtp.messagingengine.com [103.168.172.148]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-342-EYKPv9jfMtu3EBdQw9H-ag-1; Thu, 15 Aug 2024 13:33:06 -0400
X-MC-Unique: EYKPv9jfMtu3EBdQw9H-ag-1
Received: from phl-compute-06.internal (phl-compute-06.nyi.internal [10.202.2.46])
	by mailfout.nyi.internal (Postfix) with ESMTP id D748C138FC26
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 13:33:05 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Thu, 15 Aug 2024 13:33:05 -0400
X-ME-Sender: <xms:0Tu-ZrEQcTb1sDmQd76deyOVm-SxPEgFqyWa5Xt0dMXnq8eWC81jlA>
    <xme:0Tu-ZoU9Rezne54-fYET5YCBWVUxbpUWwYoMGOEf5rDQuWok540lgyyMJu2mCKMkb
    qAwlkGhG0tIUD9_zzg>
X-ME-Received: <xmr:0Tu-ZtIHvdJmDRiid4VvGtuTDtOQ6kTERrdloDtd8KMeviEOQG0h2zeJI51GrzDqdSPNwd3sMpWBzc1OwFO7CkRiYNP33j7ZZXY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtiedgudduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhr
    ohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvg
    ihrdgtohhmqeenucggtffrrghtthgvrhhnpefgveegveeiueehieetveehhfefffffgeel
    jedtgfdvtdfgveevfedvveefudegteenucffohhmrghinhepghhithhhuhgsrdgtohhmne
    cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhm
    vgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepuddpmh
    houggvpehsmhhtphhouhhtpdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughh
    rghtrdgtohhm
X-ME-Proxy: <xmx:0Tu-ZpFs_iVlT2yV2m3uI15jlmtW2L6NtUPNfFJ00oCn1q-Woh6hWw>
    <xmx:0Tu-ZhVEztImsFYg46v_Ekvv5WYgon4tVW4hbM-8uXjT_3scEgH0uQ>
    <xmx:0Tu-ZkN3QI35Bf0l1bvYwV-KTKSN83DFvFoWmfUE9kw0uTS2yujiMw>
    <xmx:0Tu-Zg2L-o0tNi6QcfjOae9QbeM_mnKlX2JXbDYXqL3gpShpyGaV9Q>
    <xmx:0Tu-ZgcZhsaqn9O4FZubHizUtMpz3FANBIwH6iJK9ysI8nr-QC4XRUQC>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Thu, 15 Aug 2024 13:33:05 -0400 (EDT)
Date: Thu, 15 Aug 2024 10:33:04 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Can I Easily Run Wine with NVDA in Debian SID?
Message-ID: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted
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

Hi All: Well, so-far we cannot get ORCA running, I wonder the following? Is 
ORCA currently an only graphical screen-reader I can try? I remember lsr is 
many years out-of-date? So, I figured maybe I can enjoy NVDA through Wine. I 
did an apt-get which got me 9.0 repack 4. I also grabbed instructions-and-items 
from
https://github.com/mjakal/sapi5_on_linux
I like an aspect of NVDA as like Speakup, it has flat-review. Thanks so much in 
advance of your analysis.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

