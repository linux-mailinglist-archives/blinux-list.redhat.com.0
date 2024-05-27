Return-Path: <blinux-list+bncBDGI3AUYYYCBBFGFZ6ZAMGQECHVHR6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 987828CF747
	for <lists+blinux-list@lfdr.de>; Mon, 27 May 2024 03:32:06 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-43f7dba5d72sf31518201cf.3
        for <lists+blinux-list@lfdr.de>; Sun, 26 May 2024 18:32:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716773525; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bu6X6ldZROEKgaefPml1eZVwLIEBU7PpymDrmqmZYDEYTHs3/DZPp3V0ekaH8rDc9f
         Vfudvg9boIanmGgEfoimAuxaIzwmPZMoaC61O9d/Xwk1BJueq+GsYQOLk5i/x7w/BrId
         j515171+IlzS3EKhREfFPCaXrW/ZiVM40mtoeCQMMePg1ZJpxA9Jao+c7jCDFsB8aNTZ
         xPnCjfqcb+Vfi8q7aP4v8KQVvGkLLq86VHLJmPfrCLqocxSKSNiBCUzDI9qiDwshxIZ2
         untrAnvOT+4fEshHH08QXxhf23ilxdS5hw6IY0+VBUQqOvfHHIXgzN0YhtFSP7N3DwQu
         b1mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=JEOW+uU88m7qE8fvP47NdaLlh0xO8XonjS2iEH2QG1s=;
        fh=Ldq7bz5Z7qawCjKKQ/arNtZB1V1cXIJxW6pz9Y0wzs0=;
        b=GRK5wzi5zSx8IeEtc1HWV5l6aox2wCicb0pT916zTwiFxn3rnOH+fjZacznx8Xit+8
         BpBN5veWNaQtr4HxV7/4GI2ohcBffpuoj08odkSL7WqGzX7LS8XDoWQqc/1nv0T2csrp
         VMgxhikS4BeIO2CJGTd6K8+eJ95VA4JbX+TfJjPycOx2JVxjUCDAUpQlLGfy/oLxjgZv
         q32mujbYJzYCaD/lVi0Muomn7ht0gzrGcaLoSVRCc7xgNFZa9ngzLEsV5NcfR2QL1z8O
         EsSDB5WDnBVzIyln9B5bUYJ3/7ed2MHmyaUs/33cG18hX/rRInFH34+MebLsMOb80tO8
         xqvA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716773525; x=1717378325;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JEOW+uU88m7qE8fvP47NdaLlh0xO8XonjS2iEH2QG1s=;
        b=kKTo7UyHbz2J+2lSkFLUuNKIzbcsAC1qtJwuWG4QuS9I76NGiaT5Qj6N7GoixQKlbS
         ByROB+7Rnl7VRpxxS5DAAiFbJlL81vRNvEQvhWw/FIM3B4qADP1ZjMZo0PlB/hbUJQxW
         7Q6rBAk16kJir4wXUm9i0oSVy/uZgx4zystNMFbQ4EpAfGdlf6BCzr4Xq8yCUTO1jT+i
         Qf8HKhojDeYqBx0BgXs5N2orQKeWmhJ+HobEON5uuwRlcvsLZf/hsuPk8ozBopmR2p8i
         JasL+I13P2Jr8TeW1OGptM2Pp3ioDgjZt0FvAbmLcDhn8D7EknqxGNp0fFDRUjl14XQl
         MprA==
X-Forwarded-Encrypted: i=2; AJvYcCV8P5o/4cjOmVYzr6n/KCzKm4cr9B5/Uf5YnS4Mt6TE+YCDf1vyfnwfna5+J1GDUQAeftWUzy4RyF2eygBgMaRo+IG2VAKlLc9v
X-Gm-Message-State: AOJu0YwpW7jgEl89iD439ezSJS0cI9NIZZjDz1aqJvrh5b0ZYY+i/KqJ
	sMPuxV/m6XYpgW6VtFGV+uY6y+3bNK4O9FZABFBFfE5YuOpJZ57vAIRwRo9gF0A=
X-Google-Smtp-Source: AGHT+IHco+Hzoe/2y/GqN7/3/y7+xC6fQaVlsAz8MwdLAsl8s6NtT7c8gpdhvYtoeYe//HenuOU0Fg==
X-Received: by 2002:a05:622a:646:b0:43e:41d9:e2f2 with SMTP id d75a77b69052e-43fb0e9496emr81440861cf.35.1716773524960;
        Sun, 26 May 2024 18:32:04 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:34c:b0:43e:3c74:bf5f with SMTP id
 d75a77b69052e-43faf0421d4ls29911651cf.2.-pod-prod-04-us; Sun, 26 May 2024
 18:32:04 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVfw+3wNZEybBK+HIcjJp2Jum8/DJlO7VnsH1i25KpkbDvqrgE9jnJv9QvqfznoVypZX1bz5gAgOElwGn3BRNMiLdDc/v3JWbMUyI/N
X-Received: by 2002:a05:620a:2293:b0:794:62d5:36c9 with SMTP id af79cd13be357-794ab0add16mr740379285a.41.1716773524071;
        Sun, 26 May 2024 18:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716773524; cv=none;
        d=google.com; s=arc-20160816;
        b=CsX9K0biRASITXrxIOhAp8QlpxtXyo0U4OUhQNIIFRxUGgat3NUeIP6vSCjoD9fzId
         h0XoGOXCYRAyruQ2VL98D1za+3rHq+2ppgYs3qxFjrMgK+D3RDNWym7jsVEp0wuLmL39
         RZirKFajFVnzggkfXKlHrLA+1VWhAdiH05EJThrQN2b/PfQ7m0nJ/HclMb9cyiB9Saxv
         mr389PNc4mCXJx3yapBiSbMU0E054UTrifrh+8WPhdhS82dwqz1LwOk8Tf74HrjAkQvD
         m4To/MQQ4BwsXGsK9d7IsdyyKQ52CL0X1i9nRMmE/r2w3Fzk7XGtQmnSrTFK60zWvZyR
         5ugg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=ZWRCS/b7YfTSQkVeWadKqIbU795xdW9BxdGFC2kvRYQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=D5M8N4XaS8sl55qbdofQFMbaw0XYBamxQ/uYmoc0XutNBQNMfisukyheKRY1gyFPvi
         C9R5BC5HtR+9B/s//T2dnTL1c1SnGbOvsQt9zgNtcLud+hGzhEhwszghkVGVp4o9QQHs
         gP76J8/KUpr///N3OWER6RJ0fzw5J7pWjvSg7QOQOSMx/XzkmECdSn1LWlkFZvqB5A1r
         /wRmSlTbWj8RM86sZHHxwhDOih9ombBDY7v3e7WYBObc1zqn0W3qIn2BNXsWs0GNpD/a
         DPJWXGtIW9vNJCMFOO3iBs+7lbsqbRimebN7aFiHc2bhhmnXqPwmXzkajSBhV0dkw1XI
         x//Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-794abd0b0bbsi679802785a.363.2024.05.26.18.32.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 18:32:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-554-3A169M5XNG626twpcMLnig-1; Sun,
 26 May 2024 21:32:02 -0400
X-MC-Unique: 3A169M5XNG626twpcMLnig-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C0A161954B05
	for <blinux-list@gapps.redhat.com>; Mon, 27 May 2024 01:32:01 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A8E371954222; Mon, 27 May 2024 01:32:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A69BE1955D7C
	for <blinux-list@redhat.com>; Mon, 27 May 2024 01:32:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 02FFD19541AA
	for <blinux-list@redhat.com>; Mon, 27 May 2024 01:32:01 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-665-VfxOMm94MHygk_UOFSxFTA-1; Sun,
 26 May 2024 21:31:58 -0400
X-MC-Unique: VfxOMm94MHygk_UOFSxFTA-1
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VndRK3Jt7z70X
	for <blinux-list@redhat.com>; Sun, 26 May 2024 21:31:57 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4VndRK36LRzfYm; Sun, 26 May 2024 21:31:57 -0400 (EDT)
Date: Sun, 26 May 2024 21:31:57 -0400
From: Rudy Vener <salt@panix.com>
To: blinux-list@redhat.com
Subject: getting BARD 2.0  to work with lynx on Linux
Message-ID: <ZlPijW01gZgptZTU@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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

After testing the new BARD 2.0 interface on my Linux system (slint v 15.0)  using lynx, I
had a few bad hours when access was denied with a cookie error message.

I finally got BARD 2.0 interface to work with lynx, but had
to change the cookie version to do so.


To save others future anguish, here's what I did.

1. cp /etc/lynx.cfg to ~/.config/lynx.cfg
2. vi ~/.config/lynx.cfg
  copy the line:
#COOKIE_VERSION:RFC-6265
and edit it to:
COOKIE_VERSION:RFC-2965
3. In a script file you can name bard or whatever suits your fancy, call lynx as follows:
lynx -cfg=~/.config/lynx.cfg  https://nlsbard.loc.gov

At some point BARD might fix their cookies to work with the default cookie version. Then again, they might not.

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

