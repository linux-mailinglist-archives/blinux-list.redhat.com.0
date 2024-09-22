Return-Path: <blinux-list+bncBD4OZ3GOW4PRBFN7YC3QMGQEWLDMVOI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 977E897E1E6
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 15:45:59 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7a9bffc241esf740074385a.3
        for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 06:45:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727012758; cv=pass;
        d=google.com; s=arc-20240605;
        b=dWuicSEFC1ViNJl05+lENe/+U07IabrzCOx6F7f+W64k9s2TgXtbU0gHYSYpJGqHvf
         XZUc8GVRMPcm6bM+6/lAc5L7RqgdHJnfkA/6sp2x7aI7G+/poUaa2r4dmGL4/b7S21Dw
         gPzTXMTaWNBeg/0N+G/vwIWb3D6IIP/DzZvnWVAH0WPHCB886igVbuJjdTNfyRvdCjwz
         TQFYvO+KUde0KnuMLMrywsAiIbSNS3VHSWYhS/VsmnvUr4klRDpAiYAqPsEDGi2G5ny6
         F9KI1LCu6oI2f2paojIIjjX7l8Fkj2FxBqFqiRxL5JW/hJohiNbLQ+rjPduvmQoZRZCO
         lDCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=UgeiiKqI6m1LPJhrUY+o7V44Dcru0q9LRa/jGtvQegc=;
        fh=reib/VdZgxL1SIRXYiCdgUG4IPvgMgjUF6AxYmk+JtY=;
        b=c2y275oAdaiJAcwt+UfO6c4jnfvB6c6oO9UnkFgMoK539bo2qCiLTM7+DEHvAzBcuW
         bvHckHBapZxn5FketZk5Kl7SNhdO83TZZmX1kNkBGpaotQequdOUNw1V2rsT0lp47zL6
         3rnp7qPoCy75Y/CmyNBUx6A/ltNiUVh3g4nzFnEx20McPzqQ3zydXXh8Erub/SdO0N6E
         IK/LHc6bP3VRc5w7FlN4mV8wHpVQQBwNQB+6QQSDWcf2AaXTyv8wrt5f4Uchf6FjaUuu
         MMUQkbe/q1OnN74BRUlULmmnmPrtqUM7wh948v90lqqnTw2NO02ECr+o5U30Ln0h5xkA
         naMw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of tanioms@yahoo.com.br designates 66.163.185.33 as permitted sender) smtp.mailfrom=tanioms@yahoo.com.br
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727012758; x=1727617558;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UgeiiKqI6m1LPJhrUY+o7V44Dcru0q9LRa/jGtvQegc=;
        b=p3x4g2b8b7HPXcrkoiDrwDGaU3YWq/jhTmFHEzR5JJ7RQh4jql4XPW8QhbLS6FhxTW
         x2L7C8/F+NPlsaqibJC+ywQxxfApPexI0dHwtwlI20li0XPYsU9zadElI9DlzGlDwRWx
         yzxFqr88XKrakz7/kgie5bXfj+XXVlq+ihD6HsjaUVLl0bsXJe9A/WFuXc8Ed2I/RJma
         1dXK2vy/sKLJ9fYeOR4BBAGCGBSJtDfU368sren2sSoNDtBEzxjRLVnLgcnUxVo1y1tx
         yLLeiuu0gMwV72uMxWlXjg9yUjlGtPnH7qtWJ0LcOZofqUcJb+tnH8ugjcFLvdolnid3
         FtOQ==
X-Forwarded-Encrypted: i=2; AJvYcCVJ6bFCtJm64sKUE0ieEi4lvCxCh2hzPJUo1Bhq1f2bCFSxveF908MT9WegNocBun6NrywxeQ==@lfdr.de
X-Gm-Message-State: AOJu0YxsiwjNN2/lM2Rm4KEkpytiLhTahKhwphkUAGVxOyCUabxanLes
	PBVokZp6ZXr54X3Fwj6nI4K3HP3CNnbpv3/JfQVmdYDC/6Okz4TBClsGeKENQc8=
X-Google-Smtp-Source: AGHT+IExME3S/q/0py2TCzhzJYj+2Nd+z8OMSX6JAVK2Zwtsgzbop3PGFjvaXmoZe7mLmLAWzzY57w==
X-Received: by 2002:a05:620a:1a9c:b0:7a9:b914:27a4 with SMTP id af79cd13be357-7acb8097b27mr1473139985a.12.1727012757615;
        Sun, 22 Sep 2024 06:45:57 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1811:b0:458:2bcd:ed1 with SMTP id
 d75a77b69052e-45b16366c4dls55099051cf.0.-pod-prod-05-us; Sun, 22 Sep 2024
 06:45:56 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXhFvTyUd749QHvAtKpkpxkKB8m3IOxBki32d7YKrx8/zYyXDVzgDWIbjSNkuc7BDgbAV+9VOdcVBIXlA==@gapps.redhat.com
X-Received: by 2002:a05:620a:400b:b0:7a9:d09e:cfba with SMTP id af79cd13be357-7acb82226bcmr1516635685a.59.1727012756612;
        Sun, 22 Sep 2024 06:45:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727012756; cv=none;
        d=google.com; s=arc-20240605;
        b=dUQfalpVhqcx0rw9xtk6cwWJ6q77u9qSnTgLqZP2VSlmvfBLt8IL3IBLAbPY28Y1vl
         uNt6kg2CBQyK3Sxw7GIqqOLRbAL1lnXVAiKsFnNg637DODLRlr9KBU+PGcX2MOfAACEz
         lQEk8DIbiTz18dWPZgxLZSMdW6Sfzr1Bm5v/mm/M5AmdCAIufydlsbREQvzTLPXeYDlP
         uDaAlOmuSoFMLJr0t6jGzohmOxPy4aFlzb1CJAAfvIHgQZuoPrp8flNz4qbtEeIoZU+q
         tRPOF6iHf0cNhbQSm/dA2fg27iJ842wQ8+wA/N+F1Rjkku1E/WyfK2NGXz6vK+z+p0iR
         fJNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=vPsR38Jez9xK+Tx+wksHBGa1ZR0768V8b3ZDa4Lptps=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=h5WFVsjdssayJy6rPgQn6hTpx5hR4sEw9luRbn7hApWjUutDRJbYtyTyQbIxxkD8V8
         C0ZmQhMektv9jbjjEe/FRQYEwVFBhOIRHTt3A1NYjoG7a9LmR0JGhutMI2ta6sajCf34
         R9vKPu2l71wG2Ra6YFSuzL0J1SGrvzRCGUBViMQqp4QTsQvEY5q1p6HEH8StfRQchP1n
         maQzEYEIk91U0YFnVHehwikeRNY+d3FWu1exssqp85VwYghyC9tTkFauCJ9iYYB930oU
         F+YOhKlq2wrQalVDZSlahztDFOcgSdshtdEmZoaENoV8RUVXzyimm6WFB3tVkpBPup39
         tUZQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of tanioms@yahoo.com.br designates 66.163.185.33 as permitted sender) smtp.mailfrom=tanioms@yahoo.com.br
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7acb08f5faasi846378585a.611.2024.09.22.06.45.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 06:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of tanioms@yahoo.com.br designates 66.163.185.33 as permitted sender) client-ip=66.163.185.33;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-59-pIFw0XcJP_6quIIrjH_3MQ-1; Sun,
 22 Sep 2024 09:45:55 -0400
X-MC-Unique: pIFw0XcJP_6quIIrjH_3MQ-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 655611934BEE
	for <blinux-list@gapps.redhat.com>; Sun, 22 Sep 2024 13:45:54 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 632FF1956052; Sun, 22 Sep 2024 13:45:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 60C2519560A3
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 13:45:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 79D791934BEE
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 13:45:53 +0000 (UTC)
Received: from sonic313-10.consmr.mail.ne1.yahoo.com
 (sonic313-10.consmr.mail.ne1.yahoo.com [66.163.185.33]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-137-rItZMR3gPo-E1rvzNh8-uw-1; Sun,
 22 Sep 2024 09:45:51 -0400
X-MC-Unique: rItZMR3gPo-E1rvzNh8-uw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1727012750; bh=1P2d+wVCPBim6OVVL2MdTuXqWqOY9TsFAcZfxTOw0kE=; h=X-Sonic-MF:Date:Subject:To:From:From:Subject; b=ZiInBV1l6y5yTOChbu8KZjPtCcqr2WFN1awl+UfPUs1yHHfBiVw737xKuR5PxUM8YVzOpaKehGcCNB/8nkPd2ljwEk+CO+t242HT90nmfNYuxUeEw6ZbTrPAHBXwexR00kzynOmRnwnJnabu3ACED7Vz4YwcqTUHkh3cIpTjqts+RS8Sxt+UX+EYz/KQBJBFYyJE4aa9Z3JNZiTNgz3DBXIVrOq14kDj8+xosQBXBBtgOU0fZf6TtqAqfXcqPmmMb2YvAybZOaatUGOtyzEO4wmm1/STrdh4+auIm6z8pmdNkUC7bL74oHPWGbkOATKqwq+muXFqAx5mdl3za9MkFw==
X-YMail-OSG: JDEOdg4VM1nAo_fZenTmZTEmksvg1uffnMcV76o91ao2eR5cOrIIFjX4lFz1_ah
 AuB8J.iV2r02SdW.3sb.Q2QEZ1Ck3o_ixquFhrWBmJDf9lNakP9cS2T6AKzddJPhgnJ3y8DcSoKy
 kg5UYc8U5lUF8.KrsE2pDSzrALXpFSBVizLy6tRVZ0tbfQQhHJBLkOVL42t7iNc4EsNLnbRd7GIy
 MyRqtfmXKLXtAIFBVCmioyxEPGwvpxOEqaRTRfaCvUjEWKLHJpgxz.V6WFUy.Djrxmo5Gic5LljE
 3sRIqlCOVLTKwTywVbf7es9ePVgb9QMPrQfvNpKohSgIiz4IoW_GRfJdc5vizO9T8pjk7Nn.RXam
 wME3feCWnJfLDFxBj1aTpGRBwdD1v1.FUOGboZYzOmm_DxG19Y.2DgmW6HZPfmZC4aKVKUP2jXZX
 HuWLyxGm2h8yfQsTs8oh0jQvyoWUlxOyVZGPgEq.naGfnYy2U9ZTzyTJNfRz2ZvuhYNaJx9QYDwF
 DJFNIMMPWabNh8WHMPWx3xF.6A_1d9F40yGKYBMWxQFxfS0kebuVKvT4InfHHBFH1kcE3.UtBKMW
 yBKBKTSLpaUXuRXgn0gA_kwaDTOq50TWP7LvWZN7Up8vYvAqN0gLHf2Omsy0gvgk3KsFahlfv_Et
 l_KqW5xFITVCRaVqUv.8pdMBH8g59QV_4W6wS.MfD8QP8HVnyIa2TZx.S1FzW8J8gqL.XTYWS4P3
 esQGiI.SlJPVF7jxZXDGLMhRMnQw2e2tjRiIJ5vmln1NreUsiI5q6Oa09YMRLT1zS0bfEjvWqzwL
 LEFPKhKcGfQcYRLUQdhwRIBp_Uj_dZ7LealGHtxkyE1ZjsEbhdjkmFN0FRWJFh5dvZlWOYoyVpRr
 fy4T4.2xP1QIPCcVYwi_BUOVOwmXuYFbkVtNhE0HeYY.65E3MYG9st_9NZTLRp4hEdedtrTeuCmh
 eENKYODU_SmZ2vnW3cVxMkLjwgZH6fyhNOK5V8WFVphKniQxoiofPorCGCMIq5c.8GMe0RS.fGwf
 MMzCfskgUmk7UHkzxl.iH5DSGvdx8_LKkqfYr_boo1FuHBMgt9fWm3zLKKhK_IWkbAwY3eH5ADeH
 8I7QE14_IaVe64W_3WN63l9ipp_7BB1QUI0YyAtdI99b4LixDhhUa04uDbSCFw6q.Ph4yb8f6Yzh
 5XDFaq3JtNDFYOrY7KNBFnwAbVsUHZs8mw.6.fw0Rl.1me4FvpIiLmTmUL4n_TXHmevQq0NUsqVv
 H0NXg7._fUMsaAxRl95biyX3beknMqMA5xDYIKLghPit0vicade9hR4nyHX6A5hMjOpMauGLtYMo
 QXs0F1ZyYROmQaUm8P_ChwUMM2Bgd9GJcCfKoRmwk9rmhqD98zlqlCdIvO.IfsydkohhFGlgBf0H
 DGrLl8YRT.BRdFcUpwYtP1Szb65BCI.09FcmS7SBO.cZX2xQmhHVnrXrjsGzaq4g3kJjIo9T2Yih
 elSkbxJLc5kXw4a8.i3YnsClxP2yHOE0JjwRk6LIrsUlQyE5..0uY0dkJQD5TjF9Xu3rtcsB9Gp9
 Qoop11fVFsPmuLaQXh.VoQ4mdX_5Jj72AOpUshwTR6yLj0X6iWDSdPEu5siGQ2EBvdDiebf.gqh2
 N7BejkncO_UrKY9Hq8v_idYMTqjLpiUW3seNvYgGHCA4BSfw0hwu9Ay6z3O8PPwYAQValfYtC.6J
 8gKUIYjejLNxNwogSj.OQwtv_c89__jFXkFDa7jIEf5Bg2qPTEYTWCtCkBZQO2xdnuFy_hwfQ5pd
 YnM_MmlKG.quvWCb6Jekuoz6xtmUYCVkIp10.GCb6OiDbAjkUchP.elbLfZQkJQOHbCkMWdFM0d.
 GdPiclOVoK6panHLmQCdBTGFSdJxR0dULI_6k5o7JC45L.p3ZBwLx6f6XFr5BUpQqHN6CfoOnELy
 4eAcsAmFy89KPnQxP46uP1AI8rjM4gxZ2mrD3v2dzRrDCqORA41Zl6K.KI1m32sbQTPkd3Jc2yeL
 oXsXNczNjd9lBP7dz6NhmkxOF7qiFroUVB_pnH4Re2abqACdtq3seVIR0I9LRtnhZkfT7aEuvvP0
 BPhVASgriogfggVH6qAeoVMKzCEQBWFHFd3B5yDA1cwus1svcbQ8Wfc4XjlOsuBq_t3fm7opJbgL
 Hh6gbJtb.m7Hrj5MG9VHzNqyG55H3Bx.DQza6KZXlXYp8iCs8mJ_fmUUm52r.HmzfaJoJBW6Kkvz
 4vt9VakP6bPv3L9W8AmDcacccdtMbAC8ajy2CozbcA7eit4Hd_DPa02GIQH8G13yo5i2Tl3BMf4z
 lODXOw_CF5imh_fHqqmWUc5N0kvS0NfS3gA4zCJYH
X-Sonic-MF: <tanioms@yahoo.com.br>
X-Sonic-ID: ece0d952-6db9-4ff3-a614-cbe4cfc97fd4
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.ne1.yahoo.com with HTTP; Sun, 22 Sep 2024 13:45:50 +0000
Received: by hermes--production-bf1-774ddfff8-46ck7 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID fc4216fb04115547b320800c6795d9e8;
          Sun, 22 Sep 2024 13:45:48 +0000 (UTC)
Message-ID: <de76d9ab-8081-438f-9998-3509d749e0ef@yahoo.com.br>
Date: Sun, 22 Sep 2024 10:45:43 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: COSMIC Desktop System76 Accessibility Survey
To: blinux-list@redhat.com
References: <a143e0ae-12e9-4b02-9844-7dc38b5727d8.ref@yahoo.com.br>
 <a143e0ae-12e9-4b02-9844-7dc38b5727d8@yahoo.com.br>
 <b5701fbe-5116-4477-a227-a7ae588546b9@protonmail.com>
From: =?UTF-8?B?J1TDom5pbycgdmlhIGJsaW51eC1saXN0QHJlZGhhdC5jb20=?= <blinux-list@redhat.com>
In-Reply-To: <b5701fbe-5116-4477-a227-a7ae588546b9@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: yahoo.com.br
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: tanioms@yahoo.com.br
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of tanioms@yahoo.com.br designates 66.163.185.33 as permitted sender) smtp.mailfrom=tanioms@yahoo.com.br
X-Original-From: =?UTF-8?B?VMOibmlv?= <tanioms@yahoo.com.br>
Reply-To: =?UTF-8?B?VMOibmlv?= <tanioms@yahoo.com.br>
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

Yes, there is an announcement about the survey on System76's Instagram 
profile:

https://www.instagram.com/system76_com/p/DAHUTR_vXry/

A friend tried COSMIC and said Orca still doesn't work.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

