Return-Path: <blinux-list+bncBDYIZZNASAHRBDGX6XFAMGQEXBXPIDY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4B7CFADD0
	for <lists+blinux-list@lfdr.de>; Tue, 06 Jan 2026 21:07:42 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-88a344b86f7sf48005596d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 06 Jan 2026 12:07:42 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767730061; cv=pass;
        d=google.com; s=arc-20240605;
        b=ikJLb0SRCy1geACfr4yLQj68uzrO8mLhwPamwZ4ftbWCVCWwbHkOIXQHBvew3lklyR
         yxTEzuOmUGL2y88IaPgK9Wf/UIq+ILi73r3Pz+8CWFBCBBGhnMgtOIvov06RgRBdcKlV
         8APhKh+BQ9CmnvEUovWMOVMwPlUr6IuVDkZHhKHP9DNbyayTFvfE4kA3YimMhM5+z5wN
         q1Fy2lC8LeGkbKSIvTVHfRlayQP2S34fDukp51qVvm7QZQvqEvJ2+qbC2HdD+NMUPCGu
         QGULlNRB0eFBUgvfn6Rw7TFe02IIkh/2/nps6UbdVQg98UpbbpmDbLA8Y/TH97Rq5wXP
         2xGA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:sender:dkim-signature;
        bh=HMnejHm2k9atfPd6lC+7Feu12B6HF9m1iuRF0jeuDBk=;
        fh=M2+YfzUOOqFbKw6esWJ2wFsDXUjnrSgkEIN2mvQvxW0=;
        b=VoamyQ4h/egjaruQWAyr5x3TMcwpUTnzBFr88ESUJgFN3pIZVXRdLIGnN54R1pVQVI
         ECpwxl2DJIz8BmEJNeDimvjwCWKFj2IaA5jbmyVfZpcHeJbJwZ00kxJNDGA2jKRT0eUS
         A7Oj2WloQaj3ML0t4r2aPhnSJzuT2vjjejT4dBOiwAUhZ+V4rnPq+jhPLEo3dT1oM4m6
         +y78XikuG7kgsIa6x+Us8naN5e9YJRL3eisZYX/SoS4YXI1H3/Oeli62uUtX7fOhfBUF
         1+5Cj2VCHWwHo7w52BQ4C6nZ/jA/h5g5HTmcUfk50FhQpBp4qhXQbyhDfh70Hlg2+KxD
         nDtw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=CrnPUDMV;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.182 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767730061; x=1768334861; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HMnejHm2k9atfPd6lC+7Feu12B6HF9m1iuRF0jeuDBk=;
        b=ERHpsunTkKRyQ2zs2j6sjY+fuULSzBvrOr5NyGGLj3LvH80B5uxE9giiaJOt3eAXGn
         nITkITdnLGKKVqwlTyjJR/+BZax7m9jMBG0U4tBTL+LfJxrt2UvMXiD1BGIEP6ROj8x+
         G2Euh1VJJza/7oYN0qLYw3WIcjtiG5+SAWZgeQudrcx+BGhDILRutIPizjBrvMSE/gm/
         xkaHlYln0JYpxQM7Fctd6cdhvbQrSsojBz05CdlteoWCrvFEC7kYfPqfmAcgJk0wE5fx
         LimnibUaJUYYZEc/LsMuGwC1qoBUEV5A9EMVvCQTO1WQrEJddFt1yq/LUYDHYBEuAy19
         NJKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767730061; x=1768334861;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:delivered-to:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HMnejHm2k9atfPd6lC+7Feu12B6HF9m1iuRF0jeuDBk=;
        b=GdGOZXpJebHPKXZRvyDGT+dvymgOTgVUCnm/4AARdfSTp///S86XleJBRcUvAy3BdP
         tA/ZZLLGRRta/u9MWQLyYiDiWtPZEpUgrbpygESAahpNZukzfWb2JnErsLZG1Fa92KR5
         J3BuiHpEKkgJIdI8LQTk53E0/pCHc9z2JDh+6bR+qUlrJm62cRl33mS5ANRNwKu0iVLn
         h7wCcu16WYyp71Qjj3rDmNvzKTQUREkv6Gnptqx9KNsUBK79LSyqmtSnnKbgvt4xS0Ik
         aqw/mygovwF9qk00yfXMONq0DwPb05EcxTZsdjFjwgfv3cuH/2q5gPFHu0EJd6muLQa6
         GOHw==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCXYa560UFMIw2+caM++cJQ0jJM2w5ucKLmxAH9k8xKRQl2qZgZuzg4X7XDCkeHzw021TbnYvg==@lfdr.de
X-Gm-Message-State: AOJu0YwYi3YzOdYyi4bNa8NcXuTwccEVGLUbnZoMtfGN/zANjA8NBZmH
	3eTVLwbdRcgRzIOcTcOKS3Aew+423wRTccbEKdWHX1sGiucfpRxDCYL8IbOfFHtp1Pw=
X-Google-Smtp-Source: AGHT+IGsUtjIDRUpKbNPYteDQbuJbLIUlk7zYcAxiItrmuVut3YFNHX9EMUwA8vthLQ/zpQLWGO2Hw==
X-Received: by 2002:a05:6214:1249:b0:890:588e:1a6f with SMTP id 6a1803df08f44-890842ac10cmr2306396d6.63.1767730060610;
        Tue, 06 Jan 2026 12:07:40 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWbaBdCL/mmpNocVJgUbFRHVUFNPQDi9cgocmS5FVYFRaA=="
Received: by 2002:ac8:5ac3:0:b0:4ed:e411:4bf5 with SMTP id d75a77b69052e-4ffa723ece2ls29271681cf.1.-pod-prod-01-us;
 Tue, 06 Jan 2026 12:07:39 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCV1vHDn4sdpTKkBfLPDf/ndEe8rtH1oyQHjHH+mertwpbae23ZCEYFrhQ+zVgp3jkMBKzePHWQ7fp9EOQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:99a:b0:4ee:174a:a40d with SMTP id d75a77b69052e-4ffb4a6d37amr1927391cf.48.1767730059352;
        Tue, 06 Jan 2026 12:07:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767730059; cv=pass;
        d=google.com; s=arc-20240605;
        b=CtMELuPvsy9QJuTiXoTiPVgt6Ii8kKiiFllx0hbzBR2K+DEBqS7MitbyT8BO9ZcJPG
         9YfdSBGklQEzRqCkt+jRM55IsppPbpvncK9GEqSCynKYBuiykT98np0nDaNvgcvRyEKw
         Prf2FetAvpb3Nc9ZujgnyOd+m2IfLeQ7lfGYtPmpE1BFx3AAfHRPSUL5N5cLfzY0VyB0
         H8vIz3dzKjGE+Frj/siRmc7UuE3ZGPH5sOXq6+nbwtAS3mRge+9PvZKXvT3R11feMLZ6
         LL0R573tdn6hweu25mIyGSJKDJpwEdWn6yvWyNmQduoTrWZd8B/UuGCPMbQkxDk6Re9V
         1mpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=Vs/oA/BhmhyHlYOGy6SKQTO6+xjawnGjA+aDhp9lMg8=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=bFHFVFDUBbHBPvW9r5asDsodvrpwNo39Pz8iIzkoaQjDl3N/Iv+UU72NaaOCGL74YT
         eIJjUjUgjlb7wt2HfxgDVAkKVKvkuo79k0Yix9M9Nz5ukoVvG/SLdHSpsIAIDaGQSjjG
         g6bFyGjL/gnh7/7n/IRvhkqG1b2Tscv9b2iFWwnnLHKmHWUWW/k4pwFjBIS4l7/R3inc
         GBFFkQHE51bErWyr0MtvrHPatYpGY4/EAFtKBgx7iaj4g1Eg47mXTzvmGO2WSrg4gIRY
         AIS+EudcF9QmCAhOCEBhWknpMPzscbkegkXbPEQjge18D++nrgGTEe0+ErbP9pFQT12O
         O39A==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=CrnPUDMV;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.182 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4ffb49f4528si1115211cf.311.2026.01.06.12.07.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 12:07:39 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.182 as permitted sender) client-ip=209.85.222.182;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-543-3jaIxPYyOm-tUG2-E1qj4A-1; Tue,
 06 Jan 2026 15:07:37 -0500
X-MC-Unique: 3jaIxPYyOm-tUG2-E1qj4A-1
X-Mimecast-MFC-AGG-ID: 3jaIxPYyOm-tUG2-E1qj4A_1767730057
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1E88618011FB
	for <blinux-list@gapps.redhat.com>; Tue,  6 Jan 2026 20:07:37 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 190193000225; Tue,  6 Jan 2026 20:07:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 159A23000223
	for <blinux-list@redhat.com>; Tue,  6 Jan 2026 20:07:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A7FCD18002DE
	for <blinux-list@redhat.com>; Tue,  6 Jan 2026 20:07:36 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767730055;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Vs/oA/BhmhyHlYOGy6SKQTO6+xjawnGjA+aDhp9lMg8=;
	b=FzXYfs2e+sYHW7KGGrogx6ovkaffAATU/CNbKLyQucYZNGzKHNFUnQNx+mFPip5Aihu3GS
	hv7YM/2++zvIhhcLAFEa0OMWIuwsTj/KnK41d65ePr5/2dyrA+H2OI9TvI3w+Ce5+JIS1D
	mk5WLwfSyP/8+/wxiZ+lI6+cy2NxxzIrqWudxNMwLZ2RjalinwC0nfaGrwdORxbLBFpia2
	tPwpCTQgDw0KURgQKq4vNS7lVpUaaTlbEk1HbRSAj50X2LfUhNpY4h/E/26Pst/Ww5HOJN
	TDlXLZSq8Ac6/iZgOJpwdfe1RMs6L/TcaveLJ1pabmcqLLXynKs+daqQwkov2w==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767730056; a=rsa-sha256;
	cv=none;
	b=PteC1YmK67G6wedopLKWhwfPN+khKVvlZICoc/a/MyNtVk51rprfxZ0O/mHJi6IzVxiNCC
	HlDcL5MBdUm9i+f73PTDEI9pg1dNveP84kBYxi40P4dJ4scG0OK08cUQE43Z9NIDBGoTne
	WCYLTJUsddmYGcpdLHzG1oo8YDLE3xxDyjMtE1KVOPu+8iWWL10Snl1UGxL7uIiHYlwq2H
	rJV0en+k0NuxmL+/Qgczxt+rXyfEvqUhEG/tXlBgl4194QhMSnoX6BbUkj6kuzYcapfuIV
	ru+hBms2Ogzb4S4LmNKQKWfPGHjLwKhMM8fCQoEGoQfr+xXteoBaey3VLuf5CA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=CrnPUDMV;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.182 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-253-A2MWdNq4OlC8yj-uShB1Iw-1; Tue, 06 Jan 2026 15:07:34 -0500
X-MC-Unique: A2MWdNq4OlC8yj-uShB1Iw-1
X-Mimecast-MFC-AGG-ID: A2MWdNq4OlC8yj-uShB1Iw_1767730053
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8b2d56eaaceso137126485a.0
        for <blinux-list@redhat.com>; Tue, 06 Jan 2026 12:07:34 -0800 (PST)
X-Gm-Gg: AY/fxX7pnxa2/7ZJbuEFbmyfZYDgxY14aQfhWlyDQC2R5lPIDzsvki+a00cggMub/op
	3Qqyv1lQGMCpUUOndzGNDKGcTw3CXXuEOcRqFtzj7UuT5G0cadE1uLz9rIsEN279jfieLDo8q1F
	YhRLM/ptlkIlEQi54b/UhnUYV4ub+BwG14StG1PWxx3RVnFPQZ2noYfoujsaNuDvp6+XT7sNiHl
	Wh09QtuV4OtgaIplD1/XaC2e2sbgJVRiSuIwFgjiGS0QzkosyH4hEu+SO/kbfgbbXRLgBzEHwpx
	Yk1eHMKTILDf1v882oINXpMELQgUT8HfUe4DgTB2oqFIdvvfRcOHZ7E/rBpwyiOA+n6pJGYfHqv
	V5540qnsdGxLlih78r7xxlbwR280muZRSvIaIJavhfP/oV5M2d3jnTtij+hI4y78MebvVjBSO+6
	0ZA39vQnrReAwTuPvDiXpbvv7AfhciZOPIHvLmHxOMJQoHxpbteeB4JsMLoIjAR+vUviZKhCgrm
	L/LRR6+W8ck9nep7xDphojLF8g=
X-Received: by 2002:a05:620a:1a18:b0:8ad:32ae:b6c1 with SMTP id af79cd13be357-8c3893eccfbmr7903485a.47.1767730053126;
        Tue, 06 Jan 2026 12:07:33 -0800 (PST)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f4b917dsm235186485a.17.2026.01.06.12.07.32
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 12:07:32 -0800 (PST)
Message-ID: <665a2e54-af11-47d7-9b74-e5b47c992006@gmail.com>
Date: Tue, 6 Jan 2026 14:07:30 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <ec97e372-1d5d-4e1b-a581-d62b4ddebabe@gmail.com>
 <80157d3e-02aa-405f-91db-4227370b368f@gmx.it>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <80157d3e-02aa-405f-91db-4227370b368f@gmx.it>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: t-CPuI9TJVoiMYfqtEGm5ocNlRQy_-Dia5_XAPlEJHY_1767730053
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=CrnPUDMV;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.222.182 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

Kyle,

thank you for that info.=C2=A0 I will give it another try later today.

Rodney


On 1/5/2026 21:40, 'Kyle' via blinux-list@redhat.com wrote:
> Looks like the site may have gone down temporarily. It's working here=20
> now.
>
> ~Kyle
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

