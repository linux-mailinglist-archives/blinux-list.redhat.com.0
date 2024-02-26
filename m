Return-Path: <blinux-list+bncBCRNHOFA7YJBB3GZ56XAMGQEXYESZKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 447CA8667A4
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 02:44:14 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-42e61f21790sf25997981cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 25 Feb 2024 17:44:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708911853; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZAMgwIqHu7yH2KVDRy8qqbpROGl46f7KRC210IcqPG5bYLagSIjG4uBayWxhIDwdp
         mxNXKWp4Rv0IqoHug9MBpcuC64Xxkq4gePnqjscSbR3cyHVDGtKqPYNNokKFG77k8DKN
         Gg1H4FJC/5x57dVaYwj8dB5rV4K0Fi3K98ofncIxYJT01pnQUOGNoYrq7TLLjJtMjyBl
         Qdk/e/fEfvybneBi+ZQcYf6+auZt5/AaYWyA3IIGL+ltOko70p03UR99tFzD0WQRu1aw
         IGLPTvaArhav9pjUybycrMhm40ya0pdSebuqFe4mP+E9KPZ0cKctjIz1nr57MYP6q2it
         ym6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:message-id
         :subject:date:mime-version:from:delivered-to;
        bh=xCMAsucYhtCg2F91erHM6bXlZMDsKayW22V4VnfGpoI=;
        fh=0CIjXti4PMPiLokBdTGi04AQPOLJnsF9jhR1LSBSWcA=;
        b=i7kScJtixfA9bTpIbvROBfucpdUAY/QrDxVIILbrLK4/XcyLqaVECrA0PTwW+mWBgx
         o5F4MbhZb30FfDs+OcJTY/YdVUxcDl2ZtSymibXMZNaO1r9i8I/M2guT8VenWbAXBGyy
         xXqK80FGaD7hoSGKIeG+wNx8rCmfMRYzfBPvdILbTdgWyCGdvHuQGU1qw6WaUHjD9rJ8
         QN1MkUteUHZWlF8H37niR5fFLay3EGqgm787n2+2ZiD5zUilgsHvNEzVjuZAcya328UY
         +ALdClLtO8xfG/z0xFv9PysG5baK1LB6Q9wJNTeK0yDA7r0z05M9QNOPVSQKnE8jLUrz
         IB2w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.215.182 as permitted sender) smtp.mailfrom=rdm@cfcl.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708911853; x=1709516653;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xCMAsucYhtCg2F91erHM6bXlZMDsKayW22V4VnfGpoI=;
        b=Gu5dhz6pAaPnUTzSPYoL6Roda9Vs89GbX6FAVRsFIm711TqWsngul+lMLw5FOZlkrw
         9eA4Jz6XwroJVl4VmzsC/Uhl7Qwi6VgnutfoOO3s1jc5EuYsPHcDDaUV7MyroLKFLZFR
         PalIg4NjdNT3nXZznJs9z62QDEFI9y+W6EBkOCafWKA0kiPdG1n+/X6s9x09O7Zg7U39
         V4NZfxp8u6CPBsB7mJ6frxWuAgYe3uHPPBjj984wYF2RVQxd6ieW/MZaSFqYDakZnwpB
         FgY05IR6NGLv4tPG2eZHTHkhts+tK5wztmH6S/RgCVXNtA/1VivkcT0ZPdcJONyOp9kq
         qzHA==
X-Forwarded-Encrypted: i=2; AJvYcCXl24tZjNW6D/EDsZ/AkuHb3+rPSK/Od5EjZeGdm6YIKOOrvdFdyEEjLaHidqx4q2HVbf7OXChfLM5qUYa8vDeWcqpF9HYQ1oWB
X-Gm-Message-State: AOJu0YznovRNiwsngwuodVF0+xeWQ/A41cD1wJ1P2dQ2s5ppkE+kEEnS
	8Ude/iRPayTPc6FJphLC3V065Hoao9kiPhJvyOeozpGVR+dTMGfH3Oa9OvWDLTc=
X-Google-Smtp-Source: AGHT+IHP5It+cSHjg513rwx5TDPMpLXTRwZ3DtHUuOxze2Tqr5xTYNNgQlVecnAeon+3g9ySNIcFnQ==
X-Received: by 2002:ac8:7f91:0:b0:42e:5da9:801e with SMTP id z17-20020ac87f91000000b0042e5da9801emr8101902qtj.11.1708911852949;
        Sun, 25 Feb 2024 17:44:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1887:b0:42e:6467:3310 with SMTP id
 v7-20020a05622a188700b0042e64673310ls3065252qtc.1.-pod-prod-02-us; Sun, 25
 Feb 2024 17:44:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWM3GhSaGoRqZ3QQ3HCSyh1LW3yaf15jRrrTFs7Vat+YFv5ry5hdmqnEFsbi713W741X7vBc1Sq+UpT4nZJqUWo9q4vxSHZ/4IAPieB
X-Received: by 2002:a05:620a:55ab:b0:787:1cc5:949c with SMTP id vr11-20020a05620a55ab00b007871cc5949cmr7462593qkn.72.1708911852125;
        Sun, 25 Feb 2024 17:44:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708911852; cv=none;
        d=google.com; s=arc-20160816;
        b=zMtxOtqM3l4Wpa35XuUg1E9C52zrz7ofQU2yLj7daNRLb+20C8IubNj7EQB4xsszmM
         Q3oGSQgqZrCCAxEhTvDD7MXtCEzeWgPwhImpnWF3bpA+7i6ghYP22cHNm6nXx0F8azSD
         31JMdrMzz4f6DTHMl61TSmBUO4cg9V0lp0gV7XTb2AqsB+txshvMwSwG/YCgaAjknAQH
         CAPxvZ2Z6wUZMaXcoxFxEG4LuI29Y7lxQ7kI/G2Yqq5otbfiK9GpJDeT/HsT84cUo7Ad
         fDeaW+hdRkGWbuXdAVswrGC+mweOABI70pcxsvxRYhlzmENPdTZAhTaTIZFkv8YqikAx
         +Y0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=iaaIP9z2EV7WhMQ3e+gx2Hs7pnjwXl736+1LJ8kzQvE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=VMvqeyGZUAlQkuZ1HGdYbsuoIFGjtmLINofAfF03ugNpfrZpr4OYm5ptfIiergqYE8
         lHlnPzTyE5JZJipv4JogRklod/a7Krxczujy/7AlAUk5K8W5fCMEEKGV53Bf+fPLkYUT
         vl75Zovt/ayp3ZLEcMP0mED6s7JGKn0LivkFHU45v6qIegpB55QHm1rOvRzmUrmeq1Bi
         Qw/zQafLLi0afVWU4T4F64cvLc6xtbHHSru/ub1v6WfoHs9BTjTI1L7VcsfSuC0/aTsZ
         gD96AWD4PtgyLM+k9xhrU13E5browlGaD4A+oZv5wPzgrEi7OLWGWrujukCpxfKm7Ql9
         /Fnw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.215.182 as permitted sender) smtp.mailfrom=rdm@cfcl.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id o20-20020a05620a22d400b00787bc3d3018si3997593qki.24.2024.02.25.17.44.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 17:44:12 -0800 (PST)
Received-SPF: pass (google.com: domain of rdm@cfcl.com designates 209.85.215.182 as permitted sender) client-ip=209.85.215.182;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-434-zcxKtWWoNPibnCnIkYZvZg-1; Sun, 25 Feb 2024 20:44:10 -0500
X-MC-Unique: zcxKtWWoNPibnCnIkYZvZg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 815CD84E36C
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 01:44:10 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7C746492BC7; Mon, 26 Feb 2024 01:44:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 446DF492BC6
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:44:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5C18C10665A1
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:44:09 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-240-QjkssHMzMWauXc8oDJJn1Q-1; Sun, 25 Feb 2024 20:44:07 -0500
X-MC-Unique: QjkssHMzMWauXc8oDJJn1Q-1
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-5d8b519e438so2657076a12.1
        for <blinux-list@redhat.com>; Sun, 25 Feb 2024 17:44:07 -0800 (PST)
X-Received: by 2002:a05:6a21:8ccc:b0:19e:c777:5c6c with SMTP id ta12-20020a056a218ccc00b0019ec7775c6cmr5258647pzb.19.1708911846655;
        Sun, 25 Feb 2024 17:44:06 -0800 (PST)
Received: from smtpclient.apple ([50.123.75.187])
        by smtp.gmail.com with ESMTPSA id b11-20020a17090a6e0b00b00299fe9c395asm3162449pjk.4.2024.02.25.17.44.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2024 17:44:06 -0800 (PST)
From: Rich Morin <rdm@cfcl.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Date: Sun, 25 Feb 2024 17:43:55 -0800
Subject: archival social media for the blind?
Message-Id: <971136C7-7CB2-4BF6-9528-60C5255889FF@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: cfcl.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdm@cfcl.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rdm@cfcl.com designates 209.85.215.182 as permitted sender) smtp.mailfrom=rdm@cfcl.com
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

Reading the recent discussion of tools to convert docx files to text, I was=
 reminded of thoughts I've had about archival social media for the blind.  =
Of course, as a sighted person, my thoughts may well be ill-considered, but=
 I figure it can't hurt to ask for folks' reactions.

Basically, it seems odd to me that there aren't (AFAIK) any comprehensive f=
orums, let alone wikis, that serve the blind and visually disabled.  So, fo=
r example, Karen's question and Rudy's answer are very likely to be forgott=
en in fairly short order.  Of course, if a mailing list is archived and the=
n harvested by an LLM, the information might be preserved.  However, that's=
 more of a possibility than a certainty.

So, here's my question: What form(s) of social media might work well to rec=
ord and preserve the thoughts and discoveries of the blind and visually dis=
abled?  Is there already something that I simply don't know about?

-r

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

