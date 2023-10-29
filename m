Return-Path: <blinux-list+bncBDYPVTOXSQEBB6FX7OUQMGQEH6HZDKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id E34007DAED0
	for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 23:26:01 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41b83b8dbe1sf53775881cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 15:26:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698618361; cv=pass;
        d=google.com; s=arc-20160816;
        b=zThqQZJnhWce0zXFF+adfwOuExHZFTuErPTLkoSyQl61/EYcbJKuGGIHz92mycG8O2
         zJy1Dhzn1h6bn4nBRIyN41qEQUWQRNRSQ0AQ92QG6reAciUp/vvm2ZyhQrPsxo/GYp2/
         5N0o6CyokwIuvowLtTM4BcUkAGPFebCPpY8afAH+WwM03RbQpmGF+P7Uiw3za6vMnnme
         oCIPxqYc0DiqkZwrjkxbUM42WpfZh/JRDTisFNo42RC/OeMP4PRz0N7gl04VJ1oHOa6e
         PPKjVoeJYHJAroVAbnpllYAZkhfC1IBmzFvsRhsjHQNHxKGJW+8BCbKBJQzjXKISSPds
         7TKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=3YHDhDtKGE12KiiQI617AAZY+gg0A05lMi0tMPHHJxM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=jVXYnYz44sxD+tByByshax7knHgmzWwVyq5KQt5acazDG6QTGGQhv52TnY6Mb+WJKB
         q6iyezT3SnUGDwh1//mVDppFkdipVrHoVrUBvnG+MdRpzX/VGwK4bVq0+onbv4wTml7p
         o9i3n6i3rHZFVmo/hZVVuNRhyO5effbH7rJleo47OvwrVP2TIssHGu2GDn/bCExY6uOr
         d5IazA27WlFXV5wt5J61bPV1MSEUf/qN3ltbtCgr7MSt4AmkGVAqTJyGwFJIbIC2isuX
         7id0V6WAA0ETjS5LAf2swhQkpqKf6bOsAuMpRgXYXQ0MnzA0T1ew+SPfk9ngqeboFqJa
         c0sw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698618361; x=1699223161;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3YHDhDtKGE12KiiQI617AAZY+gg0A05lMi0tMPHHJxM=;
        b=vvmRCVIbI8/F8tjucESy8FabuquyJ5zvkKjTKX2qv0IM88kLbcvbpX26x2/TnizXNr
         YKo0x+K/eqesSnfRLm4399n/B/AhTpduJHZ5OlPmFXEn7TEY8/zxWkiZXCoxXvazWvR4
         La6705xGRiyiEV4CfoGLCjYj7NvA8rZ7SfgzgKoQa3TAoSpMDpFKzik07euTxj4hMVRr
         0hREB0ZCc5gxrB96fibf4bMA6no+8IQy83s1TdfZyPbTIMo714vS4wAt69HSLgexTMwk
         HjAtc6ILTF1KdcwXc6+c6uGrxCoAjvYO9Fa84nnM193HVwvG2CO3FZhMp9Hw9KOVpQxq
         0R3g==
X-Gm-Message-State: AOJu0Yy0qRUoNMcLeBNXPY4nyuSFQFZ+cLVPtn+w63e7lZEN9UftS+2E
	GFSuaiDYAqEKnmSzPCXq4jMiKg==
X-Google-Smtp-Source: AGHT+IEwoJ7VrAlVsoZhwhqteX0qRknqqMoOrHhbgqpkVm0dg4DIoH/ghQAfZL4uhucVv6yD6jgR8g==
X-Received: by 2002:ac8:5d06:0:b0:41b:7759:2a9a with SMTP id f6-20020ac85d06000000b0041b77592a9amr12249131qtx.13.1698618360824;
        Sun, 29 Oct 2023 15:26:00 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:50a:0:b0:419:91d8:76ce with SMTP id u10-20020ac8050a000000b0041991d876cels2025025qtg.1.-pod-prod-05-us;
 Sun, 29 Oct 2023 15:26:00 -0700 (PDT)
X-Received: by 2002:a05:622a:2cd:b0:41c:bbbc:2ede with SMTP id a13-20020a05622a02cd00b0041cbbbc2edemr10208015qtx.14.1698618360276;
        Sun, 29 Oct 2023 15:26:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698618360; cv=none;
        d=google.com; s=arc-20160816;
        b=UIsRop2B+E25Fc4vbVvvvBcjgh84ZL1gordHe+DzWRAOWc3y/kAR8st8Un9UaLbqWI
         BxIhOo2xxI/3byVr16EtpEsDr+WoabLyEyCk+hhq9DEmM0ixHq/NhylXEoz9MBbxXtdz
         XGeqkmdcOxHvxntgsaJbnzeu6JjAEDupf9r3jMt/pvAHiFfLZUeaSQ/FQh55M1pRsX+2
         P5tk0Np9vCFMT18YBoz/Ekuu9bgkpPvQzITX7sf28d4Tt4MqeTwnBqxCcqhyo5BO8IB5
         7D73aGrBJYg3k+jIFFjIHcS19DFZJXVlmdn/lEbrzfcvrBwA11kSKkgrwfSn0om5BYms
         3vbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=tRuY4Y6wCDAaMYmhpeuMTbnMLFRfw+Pmu/S6mcHyZzI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0qwJM9YmRV+75KOdR15pNo9kZNKnASUng2HNd5q4/NlK3k6zt74MyXPkWUTlYrrKM8
         luXxljQoTV4i+vPhZt4XYl7acm0jmm1tWWwAXPMg/RXMwhN7+8Cak57ZvCX1x5QHOD6j
         64HZgzJcNEDrMwOtEiupuA54lA4GBMp54tayjpatmsBX3YrIJQEAZAqe+6vCqOVGJnyO
         cA1mrO4QcEsNJ/mfumRNt110RcAIXQwASrST7TeRG2ZQIp4lhKLcvWn8nnMgTh/lZK5p
         6lQKziTHbDMfzVduuJAAxny56NlQnlVspvMDeOIjLMIMHr19HeM3g6O/nJ64UBNhMThV
         gE9w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id u2-20020ac858c2000000b0041999744a78si4544681qta.335.2023.10.29.15.26.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 15:26:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-518-iSq8VdwcMDq7JT5eiYyaCQ-1; Sun, 29 Oct 2023 18:25:49 -0400
X-MC-Unique: iSq8VdwcMDq7JT5eiYyaCQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA9D9101A54C
	for <blinux-list@gapps.redhat.com>; Sun, 29 Oct 2023 22:25:48 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B6F46C15984; Sun, 29 Oct 2023 22:25:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF056C1596D
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 22:25:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9227083FC2C
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 22:25:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-613-5aFkIadTMqyr9ju3m3JJcA-1; Sun,
 29 Oct 2023 18:25:36 -0400
X-MC-Unique: 5aFkIadTMqyr9ju3m3JJcA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SJWFD3C15zpgY
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 18:25:36 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SJWFD2mQrzcbc; Sun, 29 Oct 2023 18:25:36 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SJWFD2f1DzcbP
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 18:25:36 -0400 (EDT)
Date: Sun, 29 Oct 2023 18:25:36 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: archlinux multimedia difficulties
Message-ID: <9cd29ce-ade2-ec43-42f0-41c185ff462@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
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

Solved!  It turns out pulseaudio will not work with mpv or vlc.  It's
necessary to use pipewire for these programs to work at all.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

